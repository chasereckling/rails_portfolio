class ChangeReferencesTableNaming < ActiveRecord::Migration
  def change
    rename_table :personalreferences, :my_references
  end
end
