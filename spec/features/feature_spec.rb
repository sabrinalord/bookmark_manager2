# frozen_string_literal: true

feature 'BookmarkManager' do
  scenario 'index.erb renders "Hello, world" ' do
    visit('/')
    expect(page).to have_content('Hello, world')
  end
end
