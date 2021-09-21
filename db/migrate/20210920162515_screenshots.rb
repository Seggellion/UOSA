class Screenshots < ActiveRecord::Migration[6.1]
  def change
    create_table :screenshots do |t|
      t.string :title
      t.string :location
      t.string :description
      t.string :url
      t.string :shard
      t.integer :user_id
      t.boolean :approved
      t.boolean :pic_of_the_week
      t.integer :score

      t.timestamps
    end
  end
end
