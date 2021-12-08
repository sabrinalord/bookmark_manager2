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
    # title_result = connection.exec('SELECT title FROM bookmarks')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmarks| bookmarks['url'] }
  end

  def self.create(url: , title: 'site')
    connection = if ENV['ENVIRONMENT'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end
    connection.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title")
  end
end
