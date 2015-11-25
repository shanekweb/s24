class AddVisibleToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :visible, :boolean, :default => true
  end
end
