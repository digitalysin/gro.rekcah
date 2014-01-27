#!/usr/bin/ruby

def fibonacci(n)
  return n if (0..1).include? n
  (fibonacci(n - 1) + fibonacci(n - 2))
end

sum = 0

(10..17).each do |n|
  sum += fibonacci(n)
end

print sum
