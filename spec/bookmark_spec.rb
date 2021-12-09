# frozen_string_literal: true

require 'pg'
require 'bookmark'

describe Bookmark do
  let(:bookmark) {Bookmark.new(id: 13, title: 'Example', url: 'www.example.org')}

  context 'Checks if class instances are being created to check if a class exists' do
    it 'creates an instance of the given class' do
      expect(bookmark).to be_an_instance_of(Bookmark)
    end
  end

  describe '.all' do
    it 'returns a list of bookmarks' do

    bookmark = Bookmark.create(url: 'www.yahoo.com', title: 'Yahoo')
    Bookmark.create(url: 'www.makers.com', title: 'Makers')
    Bookmark.create(url: 'www.google.com', title: 'Google')

    bookmarks = Bookmark.all 

    expect(bookmarks.length).to eq 3
    expect(bookmarks.first).to be_a Bookmark
    expect(bookmarks.first.id).to eq bookmark.id
    expect(bookmarks.first.title).to eq "Yahoo"
    expect(bookmarks.first.url).to eq 'www.yahoo.com'
    end 
  end 

  describe '.create' do
    it 'creates a bookmark' do
      bookmark = Bookmark.create(url: 'www.yahoo.com', title: 'Yahoo')
      persisted_data = PG.connect(dbname: "bookmark_manager_test").query("SELECT * FROM bookmarks WHERE id = #{bookmark.id}")
      
      
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first['id']
      expect(bookmark.url).to eq 'www.yahoo.com'
      expect(bookmark.title).to eq 'Yahoo'
 
    end
  end
end
