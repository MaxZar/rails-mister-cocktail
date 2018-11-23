class AddPopularityToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :popularity, :integer, default: 0
  end
end
