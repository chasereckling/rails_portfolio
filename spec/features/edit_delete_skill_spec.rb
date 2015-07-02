require 'rails_helper'

describe "the edit a skill process" do
  it "edits a skill" do
    visit skills_path
    click_on 'Add skill'
    fill_in 'Name', :with => 'All the programs.'
    fill_in 'Description', :with => 'I know everything.'
    click_on 'Create Skill'
    click_on 'All the programs.'
    click_on 'Edit'
    fill_in 'Name', :with => 'Most of the programs.'
    click_on 'Update Skill'
    expect(page).to have_content 'Most of the programs.'
  end
end
  describe "the delete a skill process" do
    it "deletes a skill" do
      visit skills_path
      click_on 'Add skill'
      fill_in 'Name', :with => 'All the programs.'
      fill_in 'Description', :with => 'I know everything.'
      click_on 'Create Skill'
      click_on 'All the programs.'
      click_on 'Delete'
      expect(page).to have_content 'Add skill'
    end
end
