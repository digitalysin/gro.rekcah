require 'open-uri'
open("http://www.hacker.org/challenge/misc/lorem.txt") do |f|
  puts f.read.scan(/\b[[:alpha:]]*[[:alpha:]]\b/).inject(Hash.new(0)) {|h,e| h[e] += 1; h; }.invert[1].to_s + " appears once"
end