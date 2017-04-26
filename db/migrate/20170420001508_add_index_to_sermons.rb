class AddIndexToSermons < ActiveRecord::Migration[5.0]
  def change
    add_index :sermons, :title
  end
end
