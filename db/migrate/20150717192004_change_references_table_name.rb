class ChangeReferencesTableName < ActiveRecord::Migration
  def change
    rename_table :references, :personalreferences
  end
end
