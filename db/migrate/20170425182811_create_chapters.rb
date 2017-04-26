class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.belongs_to :book, index: true
      t.integer :chapter
      t.text :mp3
      t.timestamps
    end
  end
end
