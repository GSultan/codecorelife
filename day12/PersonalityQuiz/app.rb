require "sinatra"
#downloaded sinatra reloader to keep the server fresh
require "sinatra/reloader"

# tell it to reference the root
get "/" do
  erb :index, layout: :template
  # or erb(:index, {layout: :template}) , alternative syntax
  # need to embed some ruby to actually see it , using erb
end


post '/index' do
  # add a post to listen for input back to the server
  # get the temperature that the user entered
  @q1 = params[:q1]
  @q2 = params[:q2]
  @q3 = params[:q3]
  if @q1 == "With" && @q2 == "Rash" && @q3 == "Ideas"
    @result = "Rational"
  elsif @q1 == "Without" && @q2 == "Rash" && @q3 == "Ideas"
    @result = "Rational"
  elsif @q1 == "With" && @q2 == "Rash" && @q3 == "Facts"
    @result = "Guardian"
  elsif @q1 == "With" && @q2 == "Compash" && @q3 == "Facts"
    @result = "Guardian"
  elsif @q1 == "Without" && @q2 == "Rash" && @q3 == "Facts"
    @result = "Artisan"
  elsif @q1 == "Without" && @q2 == "Compash" && @q3 == "Facts"
    @result = "Artisan"
  elsif @q1 == "With" && @q2 == "Compash" && @q3 == "Ideas"
    @result = "Idealist"
  elsif @q1 == "Without" && @q2 == "Compash" && @q3 == "Ideas"
    @result = "Idealist"
  end

# With deadline | Rational  | Ideas > Rational
# With deadline | Rational  | Facts > Guardian
# Without deadline | Rational  | Ideas > Rational
# Without deadline | Rational  | Facts > Artisan
# With deadline | Compassionate  | Ideas > Idealist
# With deadline | Compassionate  | Facts > Guardian
# Without deadline | Compassionate  | Ideas > Idealist
# Without deadline | Compassionate  | Facts > Artisan

  # erb :index, layout: :template
if @result = "Rational"
"<h1>You are rational</h1>"

end
end
