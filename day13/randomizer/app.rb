require "sinatra"
require "sinatra/reloader"

enable :sessions

get '/' do

  erb :random, layout: :template
end

post '/random' do
  @names = params[:names].split(',').shuffle
  @number = params[:number].to_i
  # params[:option] == "not"
#10 players, 2 teams ==> 5 PPT
      # if @number.even?== true
      #   teamsize = @names / @number
      # else
      #   teamsize
      #   roster = []
      # end

  @teamsize = @names.length / @number

  names = params[:names].split(',').shuffle
  teamNumber = params[:number].to_i
  # shuffled = names.shuffle
  startingPoint = 0
  curTeamIndex = startingPoint
  @teams = []

  #Loop players
  names.each do |x|
    #if teams[x] is defined, push player into team array
    if @teams[curTeamIndex].is_a? Array
      @teams[curTeamIndex].push(x)
    #if Team isn't defined create team and push player
    else
      #make array inside team array (multidimensional array)
      @teams[curTeamIndex] = []
      @teams[curTeamIndex].push(x)
    end

    #make sure we dont create extra teams
    if curTeamIndex  == teamNumber -1
      curTeamIndex = startingPoint
    else
      curTeamIndex += 1
    end
  end

  # =begin - example for result teams if input is a,b,c,d,e, and team num is 4
  #     Team = [
  #     Team 1 => ["a", "e"],
  #     Team 2 => ["b"],
  #     Team 3 => ["c"]
  #   ]
  # =end






  #     @roster = []
  #   for i in 1..@number
  #       team = []
  #       @teamsize.times do
  #         team << @names.pop
  #       end
  #     @roster << team
  #   end
  #     # p roster.split
  #     # <p>Your teams are:</p>
  #       count = 1
  #       while @roster.length > 0 do
  #         p "Team number: #{count}"
  #         p @roster.pop
  #         count+=1
  #       end



  #
  # else
  #   session[:option] = "The number of teams"
  # end
  # @test=params[:test]
#capture the input of the form
# if the params of the radio buttoms
# session[:names] = params[:names]
# session[:number] = params[:number]
#start from simple case of 5 players
# 5 players per team



  erb :random, layout: :template
end
