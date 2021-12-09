# frozen_string_literal: true

require 'pg'
require 'bookmark'

describe Bookmark do
  context 'Checks if class instances are being created to check if a class exists' do
    it 'creates an instance of the given class' do
      expect(subject).to be_an_instance_of(Bookmark)
    end
  end

  context 'checking to see if it returns all of the Users bookmarks' do
    it 'returns the bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '.all' do
    it 'returns a list of bookmarks' do
    bookmark = Bookmark.create(url: 'www.yahoo.com', title: 'Yahoo').first # first is called as our .all method returns an array of strings?
    Bookmark.create(url: 'www.makers.com', title: 'Makers')
    Bookmark.create(url: 'www.google.com', title: 'Google')

    bookmarks = Bookmark.all

    expect(bookmarks.length).to eq 3
    end 
  end 

  describe '.create' do
    it 'creates a bookmark' do
      bookmark = Bookmark.create(url: 'www.yahoo.com', title: 'Yahoo').first # first is called as our .all method returns an array of strings?
      expect(bookmark['url']).to eq 'www.yahoo.com'
      expect(bookmark['title']).to eq 'Yahoo'
    end
  end
end
