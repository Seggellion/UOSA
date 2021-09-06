class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :organizer
      t.string :sponsor
      t.string :player_level
      t.string :category
      t.string :short_description
      t.string :long_description
      t.string :twitter
      t.string :shard
      t.string :discord
      t.string :password
      t.string :frequency
      t.string :timezone
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
