require 'rails_helper'

describe "the add a project process" do
  it "adds a new project" do
    visit skills_path
    click_on 'Add skill'
    fill_in 'Name', :with => 'All the programs.'
    fill_in 'Description', :with => 'I know everything.'
    click_on 'Create Skill'
    expect(page).to have_content 'All the programs.'
    click_on 'All the programs'
    click_on 'Add project'
    fill_in 'Name', :with => 'Awesome program'
    fill_in 'Link', :with => 'www.awesome.com'
    fill_in 'Description', :with => 'This program is awesome.'
    click_on 'Create Project'
    expect(page).to have_content 'Awesome program'
  end

  it "gives error when no name is entered" do
    visit skills_path
    click_on 'Add skill'
    fill_in 'Name', :with => 'All the programs.'
    fill_in 'Description', :with => 'I know everything.'
    click_on 'Create Skill'
    click_on 'All the programs.'
    click_on 'Add project'
    click_on 'Create Project'
    expect(page).to have_content 'errors'
  end
end
