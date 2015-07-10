require 'rails_helper'

describe "the add a blog process" do
  it "adds a new blog" do
    user = FactoryGirl.create(:user)
    sign_in
    click_on 'Blog'
    click_on 'Add blog'
    fill_in 'Title', with: 'Learn How to Program'
    fill_in 'Body', with: 'Learn how to program in a bootcamp in 4 months.'
    click_on 'Create Blog'
    expect(page).to have_content 'Learn How to Program'
  end

  it "gives error when no title is entered" do
    user = FactoryGirl.create(:user)
    sign_in
    click_on 'Blog'
    click_on 'Add blog'
    click_on 'Create Blog'
    expect(page).to have_content 'errors'
  end
end
