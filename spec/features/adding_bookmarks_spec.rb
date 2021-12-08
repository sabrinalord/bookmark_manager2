# frozen_string_literal: true

require 'pg'

feature 'it adds a bookmark' do
  scenario 'on the homepage, the user can add a bookmark' do
    visit('/bookmarks/new')
    fill_in 'url', with: 'www.yahoo.com'
    click_button('Submit')
    expect(page).to have_content 'www.yahoo.com'
  end
end
