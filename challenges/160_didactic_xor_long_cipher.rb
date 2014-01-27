#!/usr/bin/ruby

cipher = '8776459cf37d459fbb7b5ecfbb7f5fcfb23e478aaa3e4389f378439aa13e4e96a77b5fc1f358439df36a4486a03e4381b63e5580a66c0c8ebd6d5b8aa13e459cf34e4d9fa67f02cf90714288a17f589abf7f5886bc705fcfbc700c96bc6b5ecfb7775f8cbc68499daa3f'

len = cipher.length / 2

list = [0x87,0x76,0x45,0x9C]
keys = [0x00,0x00,0x00,0x00]
s = ['T','h','i','s']
str = ''

# find 4 bytes key
list.each_with_index { |x,y|
  k = 0
  while k.chr != s[y] do
    keys[y] += 1
    k = list[y] ^ keys[y]
  end
}

# decipher message
(0...len).step(4).each { |x|
  str1 = (keys[0] ^ cipher[x+x,2].to_s.hex).chr
  str2 = (keys[1] ^ cipher[x+x+2,2].to_s.hex).chr
  str3 = (keys[2] ^ cipher[x+x+4,2].to_s.hex).chr
  str4 = (keys[3] ^ cipher[x+x+6,2].to_s.hex).chr
  str += str1 + str2 + str3 + str4
}

print str
