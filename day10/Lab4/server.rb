require 'rack'

class MyApp
	def self.call(env)
		request = Rack::Request.new(env)
    # Build a two-page application with Rack that supports the following urls:
    # 1. http://localhost:8080/ > home page display: "Welcome to my application"
    # 2. http://localhost:8080/greeting?name=tam > A second page that display in <h1>: Hello Tam (tam is fetched from the `name` parameter`)
    ## Stretch: Figure out how to serve static assets (such as images and CSS files) with your application.
	# user passes params in address bar, in the form of a hash
  # need to obtain the value of hash temp , convert to integer, and do some math
  request_hash = request.params
  
  p evn
  request.params
	# if request.params[""] == nil
	#   string = "Welcome to my application"
	#   message = "you got an A."
	# end
  # inCelsius = ((request.params["score"].to_i)-32)/1.8
	[
		200,
    # string interpolating the value of key "temp" onto the screen
		{'Content-Type' => 'text/html'},
    ['<h1>Welcome to my application!</h1>']
    # ["#{request.params["score"]} converted from number to grade is a #{letter}, which means, #{message}"]
	]
	end
end

# insteead of server dot listen, we do :
Rack::Handler::WEBrick.run MyApp
# WEBrick is actual server
#  RACK is actual server
# Theyre different handlers
