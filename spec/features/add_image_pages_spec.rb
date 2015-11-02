require 'rails_helper'

describe "add an image" do
  it "adds an image to user page", js: true do
    login_user
    click_link 'Cat'
    click_link "Add Image"
    # image = FactoryGirl.create(:image)
    fill_in "Description", with: 'flower'
    page.attach_file("Image", 'spec/fixtures/images/flowers.jpg')
    click_on 'Save'
    expect(page).to have_content "flower"
  end

  def login_user
    visit root_path
    click_link "Sign up"
    fill_in "Email", with: "cat@cat.com"
    fill_in "Username", with: "Cat"
    fill_in "Password", with: "88888888"
    fill_in "Password confirmation", with: "88888888"
    click_on "Sign Up"
  end
end
