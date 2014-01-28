#!/usr/bin/ruby

bcd = '0111 0011 1001 0011 1001 0001'

x = bcd.split(' ')

num = ''

x.each do |n|
  num  += eval("0b#{n[n]}.to_i").to_s
end

print num
