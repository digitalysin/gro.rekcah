#!/usr/bin/ruby

cipher = '751a6f1d3d5c3241365321016c05620a7e5e34413246660461412e5a2e412c49254a24'

len = cipher.length / 2

sol = ''

(0...len-1).each do |x|
  sol += (cipher[x+x,2].hex ^ cipher[x+x+2,2].hex).chr
end

puts sol
