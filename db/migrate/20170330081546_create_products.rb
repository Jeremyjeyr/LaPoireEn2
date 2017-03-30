class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :name
      t.text :image
      t.float :price
      t.string :unit
      #Products Type ( légumes, viandes, etc..)
      t.text :available_in # délai ( par exemple : dispo sous 5 jours)
      t.integer :avalaible_stock #Quantité disponible/achetable
      t.integer :real_stock#Quantité réelle, stock réel
      t.timestamps
    end
  end
end
