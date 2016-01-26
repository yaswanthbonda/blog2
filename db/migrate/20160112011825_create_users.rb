class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.text :context
      t.datetime :posted_at

      t.timestamps null: false
    end
  end
end
