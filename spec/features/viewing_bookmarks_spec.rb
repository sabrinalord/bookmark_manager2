# frozen_string_literal: true

# in spec/features/viewing_bookmarks_spec.rb
require 'pg'
feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.google.com', title: 'Makers Academy')

    visit('/bookmarks')

    expect(page).to have_link 'http://www.makersacademy.com'
    expect(page).to have_link 'http://www.destroyallsoftware.com'
    expect(page).to have_link 'http://www.google.com'
  end
end
