def consolidate_cart(cart)
  cart_hash = {}
  cart.each do |item|
    name = item.keys[0]
    details = item.values[0]
    if cart_hash[name] 
       cart_hash[name][:count] += 1 
     else
       cart_hash[name] = details
       cart_hash[name][:count] = 1
    end
  end
  return cart_hash
end 


def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    coupon_item = coupon[:item]
    if cart[coupon_item]
      # do something to apply the discount
      
      if coupon[:num] <= cart[coupon_item][:count]
        cart[coupon_item][:count] -= coupon[:num]
        new_key = "#{coupon_item} W/COUPON" 
      end
    end 
  end 
end 
    

def apply_clearance(cart)
 
end

def checkout(cart, coupons)
  
end
