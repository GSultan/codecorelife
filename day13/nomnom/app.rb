require "sinatra"
require "sinatra/reloader"

enable :sessions

get '/' do

  erb :randomize, layout: :template
end

get '/randomize' do
@theteams = session[:teams]
  erb :randomize, layout: :template
end

post '/randomize' do
  @teamnumber = params[:teamnumber]
  @teamname = params[:teamnames]
  @names = (@teamname.split(" ")).shuffle
  @teams = Array.new
    for num in 1..@teamnumber.to_i
      @teams << Array.new
    end
    @names.shuffle
    until @names.length < 1
      @teams.each do |x|
        x << @names.pop
        if @names.length == 0
          break
       end
      end
    end
session[:teams] = @teams
redirect '/randomize'
end
