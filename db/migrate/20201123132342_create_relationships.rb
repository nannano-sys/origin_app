class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.references :follower, foreign_key: {to_table: :users}#followerテーブルはないので、usersテーブルを参照するよう記述
      t.references :following, foreign_key: {to_table: :users} #followingテーブルはないので、usersテーブルを参照するよう記述
      t.timestamps

      t.index [:follower_id, :following_id], unique: true #user(フォローする側)とfollow(フォローされる側)の組み合わせが重複しないようにする
    end
  end
end
