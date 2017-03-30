class CreateFarms < ActiveRecord::Migration[5.0]
  def change
    create_table :farms do |t|
      t.string, :address
      t.string, :title
      t.string, :phone
      #Owner of the farm
      t.string, :background_image
      t.text, :description
      t.text, :open_hours
      t.text, :orders_days
      t.text, :deliverys_days
      t.timestamps
    end
  end
end
