require 'rails_helper'

describe "add an new critic" do
  it "adds a new critic", js: true do
    visit root_path
    click_link 'Art Critics'
    click_link "Add Critic"
    fill_in "Name", with: 'Ben Marks'
    fill_in "Description", with: 'Professor'
    fill_in "School", with: 'PSU'
    fill_in "Address", with: '111 Main'
    fill_in "Latitude", with: '45'
    fill_in "Longitude", with: '55'
    click_on 'Save'
    expect(page).to have_content "Ben Marks"
  end
end
