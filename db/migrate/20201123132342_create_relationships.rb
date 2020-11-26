class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.integer :following_id
      t.integer :follower_id

      t.timestamps

      #Mysqlではadd_indexが使用できないらしく、t.indexで代用(マイグレーションが中断し、エラーが出てしまった原因はこれにある)
      t.index [:following_id, :follower_id], unique: true #カラム内のデータ重複を防ぐユニーク制約
    end
    end
end
