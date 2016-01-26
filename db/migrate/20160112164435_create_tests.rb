class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :tweet_id
      t.string :username
      t.string :name
      t.string :email
      t.text :tweettext
      t.text :hashtags
      t.integer :followers_count
      t.integer :retweet_count
      t.string :geo_location
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
