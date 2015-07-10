class AddColumnUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, default: "", null: false
  end
end
