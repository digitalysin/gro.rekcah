#!/usr/bin/ruby

require 'nokogiri'
require 'open-uri'

url = 'http://www.hacker.org/challenge/misc/lorem.txt'

# proxy_addr = "http://host:port"
# proxy_user = "username"
# proxy_pass = "password"
# proxy_uri = URI.parse(proxy_addr)
# text = Nokogiri::HTML(open(url,:proxy_http_basic_authentication => [proxy_uri,proxy_user,proxy_pass]))

# direct
doc = Nokogiri::HTML(open(url)).to_s

text = (text.xpath("//text()").remove).to_s

text = text.scan(/\b[[:alpha:]]*[[:alpha:]]\b/)

text.map{|c| c.downcase.strip}

h = Hash.new(0)

text.each {|v| h[v] += 1}

print "#{h.invert[1]} appears once" 
