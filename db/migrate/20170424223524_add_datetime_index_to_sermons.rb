class AddDatetimeIndexToSermons < ActiveRecord::Migration[5.0]
  def change
    add_index :sermons, :datetime
  end
end
