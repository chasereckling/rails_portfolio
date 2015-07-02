class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :projects, :list_id, :skill_id
  end
end
