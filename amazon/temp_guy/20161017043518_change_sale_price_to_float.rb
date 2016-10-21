class ChangeSalePriceToFloat < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :sale_price, :float
  end
end
