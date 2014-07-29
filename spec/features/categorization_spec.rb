require 'rails_helper'

feature 'Validation message' do
  scenario 'category cannot be blank' do
    visit '/'
    user = create_user email: "user@example.com"
    create_kitten
    login(user)

    find(".kitten-link").click
    click_on "Add Category"
    expect(page).to have_content("Category can't be blank")
  end
end

def login(user)
  visit root_path
  click_on "Login"
  fill_in "Email", with: user.email
  fill_in "Password", with: "password"
  click_on "Login"
end