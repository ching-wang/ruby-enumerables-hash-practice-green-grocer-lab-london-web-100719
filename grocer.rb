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
        cart[coupon_item][:count] - coupon[:num]
        new_key = coupon_item 
      end
    end 
  end 
    
  # coupons.each do |coupon|
  #   if !cart[coupon[:item]]
  #     return
  #   end
  #   coupon_items_count = 0 
    
  #   while cart[coupon[:item]][:count] >= coupon[:num]
  #     cart[coupon[:item]][:count] -= coupon[:num]
  #     coupon_items_count += coupon[:num]
  #   end
  #   if coupon_items_count == 0 
  #     next 
  #   end 
  #   cart["#{coupon[:item]} W/COUPON"] = {
  #     :price => coupon[:cost]/ coupon_items_count,
  #     :clearance => true,
  #     :count => coupon_items_count
  #   }
  # end
  # return cart 
end

def apply_clearance(cart)
 
end

def checkout(cart, coupons)
  
end
