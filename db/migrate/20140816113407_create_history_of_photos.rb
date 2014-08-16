class CreateHistoryOfPhotos < ActiveRecord::Migration
  def change
    create_table :history_of_photos do |t|
      t.string :title
      t.string :url
      t.integer :hits, default: 0

      t.timestamps
    end
  end
end
