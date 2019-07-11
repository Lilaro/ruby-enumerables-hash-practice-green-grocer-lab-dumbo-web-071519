require 'pry'

def consolidate_cart(cart)
  new_hash = {}
  cart.each do |item|
    if new_hash[item.keys[0]]
      new_hash[item.keys[0]] [:count] += 1
    else new_hash[item.keys[0]] = {
      count: 1, 
      price: item.values[0] [:price],
      clearance: item.values[0] [:clearance]
    }
  end
end
new_hash
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    if cart.keys.include? coupon[:item]
      if cart[coupon[:item]][:count] >= coupon[:num]
      sale_item = "#{coupon[:item]} W/COUPON"
      if cart[sale_item]
        cart[sale_item] [:count] += coupon[:num]
      else cart[sale_item] = {
        price: coupon[:cost] / coupon[:num],
        clearance: cart[coupon[:item]][:clearance],
        count: coupon[:num]
      }
    end
    cart[coupon[:item]][:count] -= coupon[:num]
    end
  end
end
cart
end

def apply_clearance(cart)
  cart.each do |item, value|
    if cart[item][:clearance] == true
      cart[item][:price] = (cart[item][:price] * 0.80).round(2)
    end
  end
cart
end


def checkout(cart, coupons)
  cart.
end

