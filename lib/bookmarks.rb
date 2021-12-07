# frozen_string_literal: true

require 'pg'
# Bookmark class below
class Bookmarks
  def self.all
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmarks| bookmarks['url'] }
  end
end
