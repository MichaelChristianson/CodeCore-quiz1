require "benchmark"

 def return_loop(n)
   evens = []
   (1..n).each do |num|
     evens.push(num * 2)
   end
   evens
 end

 def return_recursion(n, i = 1)
   if i == n
    [i * 2]
   else
     [i * 2] + return_recursion(n, i + 1)
   end
 end


 Benchmark.bm do |x|
   x.report do
     def return_loop(n)
       evens = []
       (1..n).each do |num|
                evens.push(num * 2)
     end
      evens
     end
   end
 end

 Benchmark.bm do |x|
   x.report do
         def return_recursion(n, i = 1)
     if i == n
        [i * 2]
               else
         [i * 2] + return_recursion(n, i + 1)
       end
     end
  end
end

 Benchmark.bm do |x|
  x.report do
    1_000_000.times { return_loop(10) }
       end
 end

 Benchmark.bm do |x|
   x.report do
     1_000_000.times { return_recursion(10) }
   end
 end

 #
 # Michael $ ruby question6_ruby.rb
 #       user     system      total        real
 #   0.000000   0.000000   0.000000 (  0.000003)
 #       user     system      total        real
 #   0.000000   0.000000   0.000000 (  0.000003)
 #       user     system      total        real
 #   1.380000   0.000000   1.380000 (  1.377797)
 #       user     system      total        real
 #   2.820000   0.000000   2.820000 (  2.824291)

# ANSWER**
 # Return is faster
