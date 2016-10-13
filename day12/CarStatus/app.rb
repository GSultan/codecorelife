require "sinatra"
#downloaded sinatra reloader to keep the server fresh
require "sinatra/reloader"
# faker populates the database with placeholder values for names and stuff, for testing

post "/index" do
  @title = "Car Status Getter"
  # @veryold = params[:veryold].to_i
  # @old = params[:old].to_i
  # @new = params[:new].to_i
  # @future = params[:future].to_i
  @year = params[:Car_year]

#   case @year
#   when "veryold"
#     very old
  erb :index, layout: :template
end

get '/' do
  @title = "Car Status Getter"
  erb :index, layout: :template
end
