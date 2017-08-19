class AddPriceToLineItem < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :price, :decimal
    LineItem.all.each do |li|
      li.price = li.photo.price
    end
  end
end
