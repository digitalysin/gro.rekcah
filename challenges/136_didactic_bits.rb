#!/usr/bin/ruby

enc = "abbbabaaabbabaaaabbaababaabaaaaaabbaaaababbabb" +
      "baabbbaabbabbbabbbabbaabababbbaabaaabaaaaaabba" +
      "baababbbaabbaabaaaaaabbaaaababbaabaaabbbababab" +
      "babbababbaaabaabbbaabaabbaaaababbbabaaabbaabab"

      
str = ''
ans = ''

(0..enc.length-1).each do |x|
  enc[x] = ((enc[x] == 'b') ? 1 : 0).to_s
  str += ',' if x % 8 == 0 and x != 0
  str += enc[x]
end

str.split(',').each do |x|
  hex = eval("0b#{x[x]}.to_i").chr
  ans += hex
end

print ans
