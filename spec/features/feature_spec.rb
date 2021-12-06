# frozen_string_literal: true

feature 'BookmarkManager' do
  scenario 'index.erb renders "Bookmark Manager" ' do
    visit('/')
    expect(page).to have_content('Bookmark Manager')
  end
end
