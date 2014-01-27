#!/usr/bin/ruby

cipher = "948881859781c4979186898d90c4c68c85878f85808b8b808881c6c4828b96c4908c8d97c4878c858888818a8381"

len = cipher.length / 2

# brute-force the key
(0..255).each { |k|
  tmp = ''
  (0...len).each { |x|
    dec = (k ^ cipher[x+x,2].hex)
    tmp += dec.chr if dec >= 32 and dec <= 126
  }
  puts "#{k} : #{tmp}" if / /.match(tmp)
}
