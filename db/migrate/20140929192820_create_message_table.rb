class CreateMessageTable < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :order_id
      t.text :content
      t.timestamps
    end
  end
end
