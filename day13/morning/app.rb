require "sinatra"
require "sinatra/reloader"
require "pony"

use Rack::MethodOverride
enable :sessions
#sessions is a hash that persists between different requests

# protected calls the authorized method , if it returns true , proceed , if it's false, halt, not authorized
helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = "Basic realm='Restricted Area'"
    halt 401, "Not authorized\n"
  end
# this one calls rack . it's saying let's try to authorize you with some credentials , if they meet and match in this array, then we'll let you through. if not then you'll be halted.
  def authorized?
    @auth ||= Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end

# this protects every single page and public files
# use Rack::Auth::Basic, "Restricted Area" do |username, password|
#   username == "admin" and password == "supersecret"
# end
#let's use basic rack authentication, call it "restricted area", and need to provide use and password


get '/' do
  # session[:visitor_counter] = session[:visitor_counter] + 1
  # session[:visitor_counter] ||= session[:visitor_counter] +1
  if session[:preferred_color].nil?
    session[:preferred_color] = "#FFFFFF"
  end

  puts ">>>>>>>>>>>>>>>>>>>>>"
 p session[:visitor_counter]
 puts ">>>>>>>>>>>>>>>>>>>>>"

  if session[:visitor_counter].nil?
    session[:visitor_counter] = 1
  else
    session[:visitor_counter] += 1
  end
  erb :index, layout: :template


  # this is public , anybody can access the root page
  # the erb method , rest-ful method when a request is made
  #if a hash is the last method called the curly braces aren't needed

  #the score of the total variable only exists inside our get do
  # total = params[:number1] + [:number2]
  #
  # #instance variable are accessible to the relating views
  # @total = params[:number1] + params[:number2]
  #
  # #score within our entire app.rb
  # @@history # class variable
  # $history #global variable
  #
  # #sessions
end

get '/members' do
  protected!
  #this requires authentication, or logging in
  # our membership page will only be accessible if they provide the correct credentials
  erb :membership, layout: :template
end

get '/language_select' do
  session[:preferred_language] = "English"
  erb :index, layout: :template
end

get '/color_picker' do
  erb :color_picker, layout: :template
end

post '/color_picker' do

  session[:preferred_color] = params[:favcolor]
  erb :color_picker, layout: :template
end

get 'user' do
  erb :user, layout: :template
end

delete '/user' do
  Pony.mail({
    to: "jacob@codecore.ca",
    subject: "You've been deleted"
    body: "Thanks goodbye"
    via: :smtp,
    via_options: {
      address:    'smtp.gmail.com',
      port:       '587',
      user_name:  ENV['mail_username'], #use gitignore, ignore .env
      password:   ENV['mail_password'],
      authentication: :plain,
      domain: "localhost.localdomain"
    }
  
    })
  erb :index, layout: :template
end
