class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :photo
  belongs_to :cart

  def total_price
    photo.price * quantity
  end
  
end
