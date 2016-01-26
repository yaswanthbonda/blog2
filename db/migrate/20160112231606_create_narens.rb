class CreateNarens < ActiveRecord::Migration
  def change
    create_table :narens do |t|
      t.string :name
      t.string :email
      t.string :email_confirmation

      t.timestamps null: false
    end
  end
end
