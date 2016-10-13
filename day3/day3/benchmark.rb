require 'benchmark'
# require 'titleize'

n = 1000000

# push vs insert

Benchmark.bm do |x|
  x.report do
    n.times do

      array = [1,2,3,4,5,6,7,8,9,10]
      array.push(11)
      array.push(12)
      array.push(13)

    end
  end
end

Benchmark.bm do |x|
  x.report do
    n.times do

      array = [1,2,3,4,5,6,7,8,9,10]
      array.insert(2, 11)
      array.insert(2, 12)
      array.insert(2, 13)

    end
  end
end
