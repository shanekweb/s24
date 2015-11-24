class RemoveColsFromSpreeProducts < ActiveRecord::Migration
  def change
  	remove_column :spree_products, :imagePath2
  	remove_column :spree_products, :pp
  	remove_column :spree_products, :hello
  end
end
