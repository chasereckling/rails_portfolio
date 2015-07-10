class AddBlog < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.column :title, :string
      t.column :body, :string

      t.timestamps
    end
  end
end
