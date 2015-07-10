require 'rails_helper'

describe "the edit a blog process" do
  it "edits a blog" do
    user = FactoryGirl.create(:user)
    sign_in
    click_on 'Blog'
    click_on 'Add blog'
    fill_in 'Title', with: 'Learn How to Program'
    fill_in 'Body', with: 'Learn how to program in a bootcamp in 4 months.'
    click_on 'Create Blog'
    click_on 'Comments'
    click_on 'Edit'
    fill_in 'Title', with: 'Learn How to Program!'
    click_on 'Update Blog'
    expect(page).to have_content 'Learn How to Program!'
  end

  it "deletes a blog" do
    user = FactoryGirl.create(:user)
    sign_in
    click_on 'Blog'
    click_on 'Add blog'
    fill_in 'Title', with: 'Learn How to Program'
    fill_in 'Body', with: 'Learn how to program in a bootcamp in 4 months.'
    click_on 'Create Blog'
    click_on 'Comments'
    click_on 'Delete'
    expect(page).to have_content 'Blog'
  end
end
