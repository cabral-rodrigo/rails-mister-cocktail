class AddImagedrinkToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :Imagedrink, :string
  end
end
