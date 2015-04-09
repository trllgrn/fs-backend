class CreateRecipientTable < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :name
      t.references :user_id
      t.timestamps
    end
  end
end
