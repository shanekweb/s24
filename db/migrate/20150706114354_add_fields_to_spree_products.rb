class AddFieldsToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :colors, :string
    add_column :spree_products, :brand, :string
    add_column :spree_products, :category, :string
  end
end
