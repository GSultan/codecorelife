class AddCategoryToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :category, :text
  end
end
