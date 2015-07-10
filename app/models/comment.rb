class Comment < ActiveRecord::Base
  belongs_to :blog
  validates :author, :presence => true
  validates :body, :presence => true
end
