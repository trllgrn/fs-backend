class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :type
      t.references :product
      t.references :order, index: true
      t.integer :qty
      t.float :price
      t.timestamps
    end
  end
end
