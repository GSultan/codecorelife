require './cookie.rb'
require './oreo.rb'

class CookieBag
  def initialize
    @cookies = []
  end


def add_cookie(c)
  @cookies.push(c)
  # or the @cookies << c // same idea
end

def take_cookie
  @cookies.pop #removes the last element in the array and returns it
end

def status
  puts "The cookie bag has #{@cookies.length} cookie(s)."
  @cookies.count #how many cookies in the bag? // or @cookies.length or @cookies.size
end

end

cookie_bag = CookieBag.new
cookie = Cookie.new
oreo = Oreo.new
cookie_bag.add_cookie(cookie)
cookie_bag.add_cookie(oreo)
cookie_bag.status #2

cookie_bag.take_cookie
cookie_bag.take_cookie
cookie_bag.status #0


#construct a regular cookie, oreo cookie, shortbread cookie + more
# add them to your cookie bag and test it
