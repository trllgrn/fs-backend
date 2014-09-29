class CreateRecipientTable < ActiveRecord::Migration
  def change
    create_table :recipient_tables do |t|
      t.string :name
      t.string :user_id
    end
  end
end
