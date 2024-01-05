class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.string :url
      t.string :position
      t.string :data
      t.timestamps
    end
  end
end
