# Keyspace
# db0:keys=35391613,expires=0,avg_ttl=0

require 'redis'
require 'connection_pool'
require 'benchmark'

redis = ConnectionPool.new(size: 5, timeout: 20) { Redis.new(timeout: 20) }

Benchmark.bm do |x|
  x.report('s&k') do
    [
      Thread.new do
        sleep 0.1 # to allow the second thread to win the race
        start = Time.now
        redis.with { |conn| conn.set(1, 1) }
        puts
        puts "set took #{Time.now - start} seconds"
      end,
      Thread.new do
        redis.with { |conn| conn.keys('111*1111') }
      end
    ].each(&:join)
  end
end

#        user     system      total        real
# s&k
# set took 7.221343528 seconds
#   0.000000   0.000000   0.000000 (  7.322069)
