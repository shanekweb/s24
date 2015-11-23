class AddImagePathToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :imagePath, :string, :default => 'no image'
  end
end
