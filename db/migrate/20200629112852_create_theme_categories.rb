class CreateThemeCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :theme_categories do |t|
      t.references :theme, null:false
      t.references :category, null:false
      t.timestamps
    end
  end
end
