require 'sinatra'
require 'sinatra/reloader'
enable :sessions

get '/' do
  @max_number = session[:max_number]
  erb :index
# this is where you show the form
end

post '/' do # this is us listening to user input
  ## the params ash will hold the values from the form. Each form input's name attribute will be a key in the params.
  number_list = params['number_list']
   # the same as the name in the input field
   session[:max_number] = get_largest_number(number_list)
   redirect to('/')
end

def get_largest_number(str_of_nums)
  str_of_nums.split(',').map(&:to_i).max # this is shortcut to same as .map {|n| num.to_i}.max #shortcut of .map is .map(&:to_i).max
end
