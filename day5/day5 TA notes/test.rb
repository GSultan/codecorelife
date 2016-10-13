# require './cookie.rb'
require './oreo.rb'

regular_cookie = Cookie.new
oreo = Oreo.new

regular_cookie.sugar = 300
oreo.sugar = 350
# regular_cookie.filling_type = "vanilla"
oreo.filling_type = "vanilla"

p regular_cookie.eat
p oreo.eat
