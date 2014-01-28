#!/usr/bin/ruby

x = ((17 ** 39) ** 11).to_s

c,sol = 0,''

while c < x.length
  sol +=  x[c]
  c += 33
end

print sol
