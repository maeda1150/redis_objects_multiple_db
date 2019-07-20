require 'redis-objects'

class Fuga
  include Redis::Objects

  counter :count, expiration: 300
  attr_reader :id

  def initialize(id)
    @id = id
  end
end
