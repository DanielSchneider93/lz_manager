class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.string :bmark
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
