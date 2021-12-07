# frozen_string_literal: true

require 'pg'
# Bookmark class below
class Bookmarks
  def self.all
    conn = PG.connect(dbname: 'bookmark_manager')
    result = conn.exec('SELECT * FROM bookmarks')
    result.map { |a| a['url'] }
  end
end
