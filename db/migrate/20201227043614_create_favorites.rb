class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id, null: false, index: true, unique: true
      t.integer :tweet_id, null: false, index: true, unique: true

      t.timestamps
    end
  end
end
