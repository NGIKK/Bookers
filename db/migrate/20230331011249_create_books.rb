class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string:title
      t.timestamps
      #$ rails generate migration Addカラム名Toテーブル名 カラム名:データ型
      # 上記でも追加できる。
    end
  end
end
