class AddFlagToLanguages < ActiveRecord::Migration[5.0]
  def change
    add_column :languages, :flag, :string
  end
end
