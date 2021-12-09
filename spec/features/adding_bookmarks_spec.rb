# frozen_string_literal: true

require 'pg'

feature 'it adds a bookmark' do
  scenario 'on the homepage, the user can add a bookmark' do
    visit('/bookmarks/new')
    fill_in 'url', with: 'www.test_site.com'
    fill_in 'title', with: 'Test Bookmark'
    click_button('Submit')
    expect(page).to have_link('Test Bookmark', href:'www.test_site.com') 
  end
end
