class RemoveAgainImagePathFromSpreeProducts < ActiveRecord::Migration
  def change
  	remove_column :spree_products, :imagePath
  end
end
