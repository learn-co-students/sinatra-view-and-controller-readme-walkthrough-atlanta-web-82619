require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Mark', 'Malala Yousafzai', 'Alex', 'Justyna', 'Princeton']

    erb :friends
  end
end