class CreateOrderTable < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.references :user
      t.references :recipient
      t.references :message
      t.references :payment
      t.date :delivery_date
      t.float :affiliate_tax
      t.float :affiliate_fee
      t.float :subtotal
      t.float :total
      t.timestamps
    end
  end
end
