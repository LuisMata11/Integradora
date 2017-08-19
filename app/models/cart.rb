class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

def add_photo(photo)
    current_item = line_items.find_by(photo_id: photo.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(photo_id: photo.id)
      #current_item.price = current_item.photo.price
    end
    current_item
  end

 def total_price
    line_items.to_a.sum { |item| item.total_price }
  end

end
