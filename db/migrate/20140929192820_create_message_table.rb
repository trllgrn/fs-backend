class CreateMessageTable < ActiveRecord::Migration
  def change
    create_table :message_tables do |t|
      t.text :content
      t.string :user_id
      t.string :order_id
    end
  end
end
