class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :message
      t.string :user

      t.timestamps
    end
  end
end
