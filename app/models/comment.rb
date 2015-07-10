class Comment < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  validates :author, :presence => true
  validates :body, :presence => true
end
