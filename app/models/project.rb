class Project < ActiveRecord::Base
  belongs_to :skill
  validates :name, :presence => true
  validates :link, :presence => true
  validates :description, :presence => true
end
