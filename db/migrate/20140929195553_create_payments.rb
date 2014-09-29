class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :type
      t.references :user, index: true
      t.string :card_number
      t.integer :card_exp_mo
      t.integer :card_exp_yr
      t.integer :card_sec_code

      t.timestamps
    end
  end
end
