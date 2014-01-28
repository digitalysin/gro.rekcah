#!/usr/bin/ruby

cc = 1;

(1..11589).each do |x|
  cc += 1 if (((cc ^ x) % 4) == 0)
  cc += x % 7
end

print cc
