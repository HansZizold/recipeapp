class RecipesPublicDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :recipes, :public, true
  end
end
