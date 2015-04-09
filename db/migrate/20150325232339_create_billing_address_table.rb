class CreateBillingAddressTable < ActiveRecord::Migration
  def change
    create_table :billing_addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.references :payment, index: true
      t.timestamps
    end
  end
end
