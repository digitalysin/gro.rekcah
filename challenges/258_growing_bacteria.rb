#!/usr/bin/ruby

population = 1
day = 1

born = 1
division1 = 0
division2 = 0
die = 0
    
while population <= 1000000000000
  die = division2
  division2 = division1
  division1 = born
  born += division2
  day += 1
  population = born + division1 + division2 + die
end

print day
