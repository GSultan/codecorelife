require 'rack'

class MyApp
	def self.call(env)
		request = Rack::Request.new(env)

	# p request
	# p request.query_string
  # user passes params in address bar, in the form of a hash
  # need to obtain the value of hash temp , convert to integer, and do some math
  inCelsius = ((request.params["temp"].to_i)-32)/1.8
	[
		200,
    # string interpolating the value of key "temp" onto the screen
		{'Content-Type' => 'text/html'},
		["#{request.params["temp"]} converted from farenheight to celsius is #{inCelsius}"]
	]
	end
end

# insteead of server dot listen, we do :
Rack::Handler::WEBrick.run MyApp
# WEBrick is actual server
#  RACK is actual server
# Theyre different handlers
