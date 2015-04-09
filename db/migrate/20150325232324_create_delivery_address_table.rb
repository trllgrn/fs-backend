class CreateDeliveryAddressTable < ActiveRecord::Migration
  def change
    create_table :delivery_addresses do |t|
      t.string :recipient_id
      t.string :label
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip   
    end
  end
end
