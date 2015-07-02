require 'rails_helper'

describe Skill do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should have_many :projects }
end
