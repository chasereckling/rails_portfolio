class AddReferencesTable < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.string :title
      t.string :phone
      t.string :address
      t.string :relationship

      t.timestamps
    end
  end
end
