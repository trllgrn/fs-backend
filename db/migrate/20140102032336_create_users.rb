class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :petal_id
      t.string :access_token
      t.string :provider
      t.string :email
      t.string :pass

      t.timestamps
    end
  end
end
