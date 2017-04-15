class AddSlugToSermons < ActiveRecord::Migration[5.0]
  def change
    add_column :sermons, :slug, :string
    add_index :sermons, :slug, unique: true
  end
end
