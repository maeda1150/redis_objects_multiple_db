require './hoge.rb'
require './fuga.rb'

Hoge.redis = Redis.new(host: '127.0.0.1', db: 0)
Fuga.redis = Redis.new(host: '127.0.0.1', db: 1)

hoge = Hoge.new(1)
fuga = Fuga.new(1)
hoge.count.increment
fuga.count.increment
hoge.count.increment
fuga.count.increment
