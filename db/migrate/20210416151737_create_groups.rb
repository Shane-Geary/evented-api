class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :fav_event
      t.string :fav_genre 
      t.string :catchphrase

      t.timestamps
    end
  end
end
