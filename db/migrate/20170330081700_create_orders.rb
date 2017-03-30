class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
        #Lié à un acheteur
        #Lié à une ferme
        t.float, :total
        t.string, :status #Acceptée, En Attente ou Refusée
        t.text, :message #Message à l'acheteur
        t.date, :text #Date où la commande sera disponible, Faire une alerte à l'acheteur
      t.timestamps
    end
  end
end
