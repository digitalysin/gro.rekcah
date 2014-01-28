#!/usr/bin/ruby

total = 0

def is_perfect_square(num)
  return true if Math.sqrt(num) - (Math.sqrt(num)).to_i == 0
  false
end

(0..2118).each do |x|
  if is_perfect_square(x)
    total += 2 * x
  else
    total += x
  end
end

print total
