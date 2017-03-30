class ProductsAndOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :products_orders, id: false do |t|
     t.belongs_to :product, index: true
     t.belongs_to :order, index: true
   end
  end
end
