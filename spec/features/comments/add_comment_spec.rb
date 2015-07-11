require 'rails_helper'

describe "the add a comment process" do
  it "adds a new comment" do
    user = FactoryGirl.create(:user)
    sign_in
    click_on 'Blog'
    click_on 'Add blog'
    fill_in 'Title', with: 'Learn How to Program'
    fill_in 'Body', with: 'Learn how to program in a bootcamp in 4 months.'
    click_on 'Create Blog'
    click_on 'Comments'
    click_on 'Comment'
    fill_in 'Body', with: 'example'
    click_on 'Create Comment'
    expect(page).to have_content 'example'
  end

  it "gives error when no body is entered" do
    user = FactoryGirl.create(:user)
    sign_in
    click_on 'Blog'
    click_on 'Add blog'
    fill_in 'Title', with: 'Learn How to Program'
    fill_in 'Body', with: 'Learn how to program in a bootcamp in 4 months.'
    click_on 'Create Blog'
    click_on 'Comments'
    click_on 'Comment'
    click_on 'Create Comment'
    expect(page).to have_content 'errors'
  end
end
