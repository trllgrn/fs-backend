class CreateRecipientTable < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :user_id
    end
  end
end
