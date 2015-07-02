require 'rails_helper'

describe "the edit a project process" do
  it "edits a project" do
    visit skills_path
    click_on 'Add skill'
    fill_in 'Name', :with => 'All the programs.'
    fill_in 'Description', :with => 'I know everything.'
    click_on 'Create Skill'
    click_on 'All the programs'
    click_on 'Add project'
    fill_in 'Name', :with => 'Awesome program'
    fill_in 'Link', :with => 'www.awesome.com'
    fill_in 'Description', :with => 'This program is awesome.'
    click_on 'Create Project'
    click_on 'Awesome program'
    click_on 'Edit'
    fill_in 'Name', :with => 'Kinda awesome program'
    click_on 'Update Project'
    expect(page).to have_content 'Kinda awesome program'
  end
end

describe "the delete a project process" do
  it "deletes a project" do
    visit skills_path
    click_on 'Add skill'
    fill_in 'Name', :with => 'All the programs.'
    fill_in 'Description', :with => 'I know everything.'
    click_on 'Create Skill'
    click_on 'All the programs.'
    click_on 'Add project'
    fill_in 'Name', :with => 'Awesome program'
    fill_in 'Link', :with => 'www.awesome.com'
    fill_in 'Description', :with => 'This program is awesome.'
    click_on 'Create Project'
    click_on 'Awesome program'
    click_on 'Delete'
    expect(page).to have_content 'Add project'
  end
end
