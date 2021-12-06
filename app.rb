# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
# BookmarkManager class below
class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end
  get '/bookmarks' do
    erb :bookmarks
  end

  run! if app_file == $PROGRAM_NAME
end
