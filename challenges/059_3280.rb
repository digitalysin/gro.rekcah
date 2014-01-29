#!/usr/bin/ruby

require 'nokogiri'
require 'open-uri'

url = 'http://www.ietf.org/rfc/rfc3280.txt'

# proxy_addr = "http://host:port"
# proxy_user = "username"
# proxy_pass = "password"
# proxy_uri = URI.parse(proxy_addr)
# doc = Nokogiri::HTML(open(url,:proxy_http_basic_authentication => [proxy_uri,proxy_user,proxy_pass])).to_s

# direct
doc = Nokogiri::HTML(open(url)).to_s

doc = doc.scan(/\b[[:alnum:]]{9}\b/)

doc.map!{|c| c.downcase.strip}

h = Hash.new(0)

doc.each {|v| h[v] += 1}

most = h.max_by{|k,v| v}

print "#{most[0]} : #{most[1]} times"
