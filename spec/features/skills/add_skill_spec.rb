require 'rails_helper'

describe "the add a skill process" do
  it "adds a new skill" do
    user = FactoryGirl.create(:user)
    sign_in
    visit '/'
    click_on 'Add skill'
    fill_in 'Name', :with => 'All the programs.'
    fill_in 'Description', :with => 'I know everything.'
    click_on 'Create Skill'
    expect(page).to have_content 'All the programs.'
  end

  it "gives error when no name is entered" do
    visit new_skill_path
    click_on 'Create Skill'
    expect(page).to have_content 'errors'
  end
end
