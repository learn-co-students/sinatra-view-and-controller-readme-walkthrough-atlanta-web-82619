require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_str = params["string"]
    @rev_str = original_str.reverse

    erb :reversed
  end
   
  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 
    'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end