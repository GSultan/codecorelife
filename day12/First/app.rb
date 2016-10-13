#sinatra

#allows us to use the sinatra gem package

require "sinatra"
#downloaded sinatra reloader to keep the server fresh
require "sinatra/reloader"
# faker populates the database with placeholder values for names and stuff, for testing
require "faker"
# / is root , forward slash specifies "root"
#on amazon, expedia, typically land on the root
#as in www.amazon.com/
#staging server, staging site , it's up there for friends / grandma to come visit .... means it's live

#after making changes to the text, must reload the server

post "/" do
  #moved the text to index.erb
  #when the user goes to the app.rb , we wanna display :index.erb
  #The ERB method takes two arguments : yield view, template view, in the form of a hash

  # @instance variables will allow us to pass values from our app.rb file to our views
  @title = "Welcome to my WebApp"
  erb(:index, {layout: :template})


  #use erb() instead of require , using the symbol of the filename
  #:index maps to "views/index.erb"
  #:about -> "views/about.erb"
  #:contact_me -> "views/contact_me.erb"
  #symbols are faster
end

get "/about" do
#resolves to :about -> views.erb
  @title = "My About Page"
  @company_name = Faker::Company.name
  @company_slogan = Faker::Company.bs
  @company_address = Faker::Address.street_address
  @company_logo = Faker::Company.logo
  # if the last argument is a hash, you can dispose of the {}
  #brackets are optional
  #erb(:about, {layout: :template})
  erb :about, layout: :template
end

get "/contactme" do
    @title = "My Contact Page"
    erb(:contactme, {layout: :template})
end

post '/contact_me' do
  puts params # print to our server console the values from our form that was submitted
  # for testing could make it recusive, so it goes back to the contact me for every time
  @first_name = params[:first_name]

  erb(:contactme, {layout: :template})
    # "Form successfully submitted."
end

$inputs = []
get '/calc' do
  # this will render "views/calc.erb"
  @title = "Grade 1 Calculator"
  erb(:calc, {layout: :template})

end

post '/calc' do
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
  @operator = params[:operator]
  #add the numbers together
  # re-render the form with the result
#{name property of our form element : value inside the text field}
  # the params hash values come in the form of strings
  if @operator == "+"
    @result = @number1 + @number2 #use params to get the values entered into the form
  elsif params[:operator] == "-"
    @result = @number1 - @number2
  elsif params[:operator] == "*"
    @result = @number1 * @number2
  elsif params[:operator] == "/"
    @result = @number1 / @number2
  elsif params[:operator] == "%"
    @result = @number1 % @number2
  elsif params[:operator] == "**"
    @result = @number1 ** @number2
  end
  # instance variables allow our post / do methods to send back information to our views
  # $inputs = []
  $inputs << "#{@number1} #{@operator} #{@number2}  is equal to #{@result}"


  erb(:calc, {layout: :template})
end
