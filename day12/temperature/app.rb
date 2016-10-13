require "sinatra"
require "sinatra/reloader"

# tell it to reference the root
get "/" do
  erb :index, layout: :template
  # or erb(:index, {layout: :template}) , alternative syntax
  # need to embed some ruby to actually see it , using erb
end


post '/' do
  # add a post to listen for input back to the server
  # get the temperature that the user entered
  @temp_f = params[:temp_f].to_f
  @temp_c = (@temp_f - 32) / (1.8).round(2) #.round(2)
  # params is a hash though
  # next, convert temperature from farenheit to celsius
  # finally, re-render the view with the converted temperature
  erb :index, layout: :template

end
