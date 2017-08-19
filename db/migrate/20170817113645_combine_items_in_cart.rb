class CombineItemsInCart < ActiveRecord::Migration[5.1]
  def change
  end

def up
    # replace multiple items for a single product in a cart with a
    # single item
    Cart.all.each do |cart|
      # count the number of each product in the cart
      sums = cart.line_items.group(:photo_id).sum(:quantity)
 
      sums.each do |photo_id, quantity|
        if quantity > 1
          # remove individual items
          cart.line_items.where(photo_id: photo_id).delete_all
 
          # replace with a single item
          item = cart.line_items.build(photo_id: photo_id)
          item.quantity = quantity
          item.save!
        end
      end
    end

end

 def down
    # split items with quantity>1 into multiple items
    LineItem.where("quantity>1").each do |line_item|
      # add individual items
      line_item.quantity.times do 
        LineItem.create(
          cart_id: line_item.cart_id,
          photo_id: line_item.photo_id,
          quantity: 1
        )
      end
 
      # remove original item
      line_item.destroy
    end
  end

end
