# frozen_string_literal: true

require 'bookmarks'

describe Bookmarks do
  context 'Checks if class instances are being created to check if a class exists' do
    it 'creates an instance of the given class' do
      expect(subject).to be_an_instance_of(Bookmarks)
    end
  end

  context 'checking to see if it returns all of the Users bookmarks' do
    it 'returns the bookmarks' do
      bookmarks = Bookmarks.all
      expect(bookmarks).to include('http://www.makersacademy.com/')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com/')
    end
  end
end
