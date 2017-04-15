class AddDlCountToSermons < ActiveRecord::Migration[5.0]
  def change
    add_column :sermons, :dl_count, :integer, default: 0
  end
end
