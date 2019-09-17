require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    #get data via a form and put it in the server
    erb :reverse
  end

  post '/reverse' do
    #shows the data you got 
    string = params[:string]
    @reversed = string.reverse 
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
   
    erb :friends
  end

end