require 'rack'

class MyApp
	def self.call(env)
		request = Rack::Request.new(env)

	p request
	p request.query_string
	p request.params
	[
		200,
		{'Content-Type' => 'text/html'},
		['<h1>Hello World!!!</h1>']
	]
	end
end

# insteead of server dot listen, we do : 
Rack::Handler::WEBrick.run MyApp
# WEBrick is actual server
#  RACK is actual server
# Theyre different handlers