#!/usr/bin/ruby

num = Array[199,77,202]

result = ''

num.each do |x|
  result += x.to_s(16)
end

print result.hex.to_i
