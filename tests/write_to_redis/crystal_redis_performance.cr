require "redis"

N = 100_000_000

redis = Redis.new
redis.pipelined do |pipeline|
  N.times do |i|
    pipeline.set(i.to_s, i.to_s)
  end
end
