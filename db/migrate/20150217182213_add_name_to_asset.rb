class AddNameToAsset < ActiveRecord::Migration
  def change
    add_column :assets, :asset_uid, :string
    add_column :assets, :asset_name, :string
  end
end
