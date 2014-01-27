#!/usr/bin/ruby

str = "3d2e212b20226f3c2a2a2b"
len = str.length / 2

sol = ''

(0...len).each do |x|
  sol += (79 ^ str[x+x,2].hex).chr
end

print sol
