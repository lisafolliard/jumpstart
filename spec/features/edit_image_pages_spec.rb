# require 'rails_helper'
#
# describe "edit an image" do
#   it "edit an image", js: true do
#     login_user
#     click_on "Cat"
#     click_link "Edit Image"
#     fill_in "Description", with: 'flower'
#     page.attach_file("Image", 'config/routes.rb')
#     click_on 'Save'
#     expect(page).to have_content "flower"
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




# require 'rails_helper'
#
# describe "edit an image" do
#   it "edit an image" do
#     login_user
#     click_link "Cat"
#     click_link "Add Image"
#     fill_in 'description', with: 'flower'
#     image Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/images/flowers.jpg", "image/jpg")
#     image = FactoryGirl.create(:image)
#     click_on 'Save'
#     click_on "Cat"
#     click_on 'Edit Image'
#     fill_in 'description', with: 'flowers'
#     page.attach_file("MtHood", 'spec/fixtures/images/flowers.jpg')
#     click_button 'Save'
#     expect(page).to have_content "Cat"
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
