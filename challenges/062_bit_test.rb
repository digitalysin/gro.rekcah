#!/usr/bin/ruby

def testIt(x)
  x & (x - 1) == 0;
end

(0..1000).each do |x|
  print "#{x} " if testIt(x)
end

# it's a "power of two"
