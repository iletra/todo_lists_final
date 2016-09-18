class UserIdToUserIdFromProfiles < ActiveRecord::Migration
  def change
    remove_index :profiles, :User_id
    rename_column :profiles, :User_id, :user_id
    add_index :profiles, :user_id
  end
end
