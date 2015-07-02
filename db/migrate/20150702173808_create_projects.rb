class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.column :description, :string
      t.column :list_id, :integer

      t.timestamps
    end
  end
end
