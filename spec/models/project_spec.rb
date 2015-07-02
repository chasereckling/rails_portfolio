require 'rails_helper'

describe Project do
  it { should validate_presence_of :name }
  it { should validate_presence_of :link }
  it { should validate_presence_of :description }
  it { should belong_to :skill }
end
