class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :account_number
      t.string :name
      t.string :email
      t.string :phone
      t.string :city_name
      t.string :state

      t.timestamps null: false
    end
  end
end
