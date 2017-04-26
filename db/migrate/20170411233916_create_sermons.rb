class CreateSermons < ActiveRecord::Migration[5.0]
  def change
    create_table :sermons do |t|
      t.string :title
      t.string :preacher
      t.datetime :datetime
      t.text :mp3
      t.text :ytube_id
      t.text :scloud
      t.boolean :fire_hard, default: false
      t.string :location
      t.text :transcript
      t.string :format
      t.timestamps
    end
  end
end
