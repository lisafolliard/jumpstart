require 'rails_helper'

describe "add an image" do
  it "adds an image to user page" do
    login_user
    click_link 'cat'
    click_link "Add an image"
    image = FactoryGirl.create(:image)
    click_on 'Save'
    expect(page).to have_content "cat"
  end

  def login_user
    visit root_path
    click_link "Sign up"
    fill_in "Email", with: "cat@cat.com"
    fill_in "Username", with: "cat"
    fill_in "Password", with: "88888888"
    fill_in "Password confirmation", with: "88888888"
    click_on "Sign Up"
  end
end
