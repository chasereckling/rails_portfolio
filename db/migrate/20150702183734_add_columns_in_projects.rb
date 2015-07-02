class AddColumnsInProjects < ActiveRecord::Migration
  def change
    add_column :projects, :name, :string
    add_column :projects, :link, :string
  end
end
