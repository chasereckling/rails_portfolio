class Comment < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  validates :body, :presence => true
end
