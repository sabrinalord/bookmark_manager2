# frozen_string_literal: true

require 'pg'
require 'bookmarks'

describe Bookmarks do
  context 'Checks if class instances are being created to check if a class exists' do
    it 'creates an instance of the given class' do
      expect(subject).to be_an_instance_of(Bookmarks)
    end
  end

  context 'checking to see if it returns all of the Users bookmarks' do
    it 'returns the bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '.create' do
    it 'creates a bookmark' do
      Bookmarks.create(url: 'www.yahoo.com')
      expect(Bookmarks.all).to include 'www.yahoo.com'
    end
  end
end
