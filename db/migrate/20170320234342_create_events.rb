class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.date :date
      t.timestamp
    end
  end
end
