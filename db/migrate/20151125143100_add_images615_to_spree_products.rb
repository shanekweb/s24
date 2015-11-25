class AddImages615ToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :imagePath6, :string, :default => ''
    add_column :spree_products, :imagePath7, :string, :default => ''
    add_column :spree_products, :imagePath8, :string, :default => ''
    add_column :spree_products, :imagePath9, :string, :default => ''
    add_column :spree_products, :imagePath10, :string, :default => ''
    add_column :spree_products, :imagePath11, :string, :default => ''
    add_column :spree_products, :imagePath12, :string, :default => ''
    add_column :spree_products, :imagePath13, :string, :default => ''
    add_column :spree_products, :imagePath14, :string, :default => ''
    add_column :spree_products, :imagePath15, :string, :default => ''
  end
end
