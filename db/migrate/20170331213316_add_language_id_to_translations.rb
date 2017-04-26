class AddLanguageIdToTranslations < ActiveRecord::Migration[5.0]
  def change
    add_column :translations, :language_id, :integer
    add_index :translations, :language_id
  end
end
