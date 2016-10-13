require './cookie.rb'

class Oreo < Cookie
  attr_accessor :filling_type

  def eat
    "Dip in milk"
    super
  end
end
