require 'rack'

class MyApp
	def self.call(env)
		request = Rack::Request.new(env)
  # Write a Ruby Rack application that takes in a score from the user and then displays a grade on the screen (A, B, C, D or F). For example the user can enter a URL like: http://localhost:8080/?score=100. The user should then see an <h1> element on the screen with the letter A in it.
	# p request
	# p request.query_string
  # user passes params in address bar, in the form of a hash
  # need to obtain the value of hash temp , convert to integer, and do some math
	p request.params
	if request.params["score"].to_i > 90
	  letter = "A"
	  message = "you got an A."
	end
  # inCelsius = ((request.params["score"].to_i)-32)/1.8
	[
		200,
    # string interpolating the value of key "temp" onto the screen
		{'Content-Type' => 'text/html'},
		["#{request.params["score"]} converted from number to grade is a #{letter}, which means, #{message}"]
	]
	end
end

# insteead of server dot listen, we do :
Rack::Handler::WEBrick.run MyApp
# WEBrick is actual server
#  RACK is actual server
# Theyre different handlers
