class AddLastImagesToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :imagePath2, :string, :default => 'none'
    add_column :spree_products, :imagePath3, :string, :default => 'none'
    add_column :spree_products, :imagePath4, :string, :default => 'none'
    add_column :spree_products, :imagePath5, :string, :default => 'none'
  end
end
