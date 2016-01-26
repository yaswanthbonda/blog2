class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :unique_id
      t.string :name
      t.string :email
      t.string :email_confirmation

      t.timestamps null: false
    end
  end
end
