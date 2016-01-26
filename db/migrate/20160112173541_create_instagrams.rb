class CreateInstagrams < ActiveRecord::Migration
  def change
    create_table :instagrams do |t|
      t.integer :post_id
      t.string :name
      t.string :phone
      t.string :email
      t.text :textbox
      t.string :hashtags
      t.integer :followers_count
      t.integer :followed_by
      t.string :posted_from_city
      t.datetime :posted_at

      t.timestamps null: false
    end
  end
end
