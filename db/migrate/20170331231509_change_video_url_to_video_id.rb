class ChangeVideoUrlToVideoId < ActiveRecord::Migration[5.0]
  def change
    rename_column :translations, :video_url, :video_id
  end
end
