# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end
  run! if app_file == $PROGRAM_NAME
end
