class AddFarmInProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :farm_id, :integer, index: true
  end
end
