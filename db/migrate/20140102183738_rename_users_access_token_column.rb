class RenameUsersAccessTokenColumn < ActiveRecord::Migration
  def change
    rename_column :users, :access_toketn, :access_token
  end
end
