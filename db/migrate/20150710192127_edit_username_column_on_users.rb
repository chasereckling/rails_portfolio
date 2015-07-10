class EditUsernameColumnOnUsers < ActiveRecord::Migration
  def change
    remove_column :users, :username, :string, default: "", null: false
    add_column :users, :username, :string
  end
end
