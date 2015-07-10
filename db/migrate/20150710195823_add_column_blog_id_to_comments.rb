class AddColumnBlogIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :blog_id, :integer
  end
end
