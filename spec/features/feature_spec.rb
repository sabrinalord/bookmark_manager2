# frozen_string_literal: true

feature 'BookmarkManager' do
  # scenario 'index.erb renders "Bookmark Manager" ' do
  #   visit('/')
  #   expect(page).to have_content('Bookmark Manager')
  # end

  scenario 'shows us a list of saved bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.makersacademy.com')
  end
end
