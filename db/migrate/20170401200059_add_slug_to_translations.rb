class AddSlugToTranslations < ActiveRecord::Migration[5.0]
  def change
    add_column :translations, :slug, :string
    add_index :translations, :slug, unique: true
  end
end
