class CreateOrderTable < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_id
      t.string :recipient_id
      t.string :message_id
      t.string :payment_id
      t.date :delivery_date
      t.float :total
    end
  end
end
