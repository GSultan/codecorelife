require "sinatra"
require "sinatra/reloader"

enable :sessions

# session[:ab]
# session[:ad]
# session[:ac]
#
get '/' do
  # session[:ass] = "test"
  erb :youenter, layout: :template
end

get '/welist' do
  erb :welist, layout: :template
end


post '/youenter' do
  session[:todo] ||= [] # conditional assignment only occurs if the value of the key is empty 
  session[:todo] << params['todo']
  @todo = session[:todo]
  erb :welist
end
