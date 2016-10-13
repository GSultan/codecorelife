# Build a Sinatra application that has two pages:
# 1. Home page
# 2. Language Selection Page
#
# In the language selection page the user can enter their name and preferred language from a dropdown (options are: English, French and Spanish). The information is stored in the session so the user doesn't have to enter them again.
#
# If the user selected a language and a name the home page should have an `<h1>` that greets the user with the selected language. So if the user's name is Tam here is what the greeting will look like:
# English: Hello Tam
# French: Bonjour Tam
# Spanish: Hola Tam
#
# If the user didn't select a name and a language, the home page should say: Welcome to My Awesome Website

require "sinatra"
require "sinatra/reloader"

enable :sessions

get '/' do
  session.clear
  erb :home, layout: :template
end

get '/lang' do

  erb :lang, layout: :template
end

post '/' do

  language = params[:language]
  name = params[:name]
  if language == "English"
    session[:greeting] = "Hello, #{name}"
  elsif language == "French"
    session[:greeting] = "Bonjour, #{name}"
  elsif language == "Spanish"
    session[:greeting] = "HOLA #{name.upcase}!"
  # else
  #   session[:greeting] = "Welcome to my awesome web"
  end
  # "Hello World"
  erb :home, layout: :template
end
