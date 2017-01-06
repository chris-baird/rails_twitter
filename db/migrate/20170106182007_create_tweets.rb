class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :handle
      t.text :content

      t.timestamps null: false
    end
  end
end
