class AddUserIdToAsset < ActiveRecord::Migration
  def change
    add_column :assets, :user_id, :integer
  end
end
