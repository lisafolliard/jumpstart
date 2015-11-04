# require 'rails_helper'
#
# describe "edit an image" do
#   it "edit an image" do
#     login_user
#     click_link "Cat"
#     click_link "Add Image"
#     fill_in "Description", with: 'flower'
#     page.attach_file("Image", 'spec/fixtures/images/flowers.jpg')
#     click_on 'Save'
#     find("input[type='submit']").click
#     # click_on 'Resubmit'
#     fill_in 'Description', with: 'flowers'
#     click_button 'Save'
#     expect(page).to have_content "flowers"
#   end
#
#   def login_user
#     visit root_path
#     click_link "Sign up"
#     fill_in "Email", with: "cat@cat.com"
#     fill_in "Username", with: "Cat"
#     fill_in "Password", with: "88888888"
#     fill_in "Password confirmation", with: "88888888"
#     click_on "Sign Up"
#   end
# end
