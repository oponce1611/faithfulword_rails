class CreateTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :translations do |t|
      t.string :title
      t.string :video_url
      t.text :body
      t.date  :published
      t.timestamps
    end
  end
end
