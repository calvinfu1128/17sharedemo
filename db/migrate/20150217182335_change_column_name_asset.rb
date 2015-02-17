class ChangeColumnNameAsset < ActiveRecord::Migration
  def change
      rename_column :assets, :title, :asset_title
  end
end
