class AddSalePriceToSpreeVariants < SpreeExtension::Migration[5.1]
  def change
    add_column :spree_variants, :sale_price, :decimal, precision: 8, scale: 2
  end
end
