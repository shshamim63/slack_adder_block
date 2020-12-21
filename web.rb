require 'sinatra/base'

module AdderBot
  class Web < Sinatra::Base
    get '/' do
      'Math is good for you.'
    end
  end
end