class Project < ActiveRecord::Base
  belongs_to :skill
  validates :description, :presence => true
end
