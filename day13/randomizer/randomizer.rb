names = ["a","b","c","d","e","f","g"]
teamNumber = 5
# shuffled = names.shuffle
startingPoint = 0
curTeamIndex = startingPoint
teams = []

#Loop players
names.each do |x|
  #if teams[x] is defined, push player into team array
  if teams[curTeamIndex].is_a? Array
    teams[curTeamIndex].push(x)
  #if Team isn't defined create team and push player
  else
    #make array inside team array (multidimensional array)
    teams[curTeamIndex] = []
    teams[curTeamIndex].push(x)
  end

  #make sure we dont create extra teams
  if curTeamIndex  == teamNumber -1
    curTeamIndex = startingPoint
  else
    curTeamIndex += 1
  end
end

=begin - example for result teams if input is a,b,c,d,e, and team num is 4
    Team = [
    Team 1 => ["a", "e"],
    Team 2 => ["b"],
    Team 3 => ["c"]
  ]
=end

teams.each_with_index { |val, index|
  puts "Team number #{index+1} has the following players: #{val.join(" ")}" }
