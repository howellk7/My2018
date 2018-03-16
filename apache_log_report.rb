#!/usr/bin/ruby

# apache_log_report.rb
# Kevin Howell
# CIT383-002 Spring 2018
# 88 Mar 2018

# variables
a1 = Array.new  # Apache log interated into lines
md1 = Hash.new  # Hash for IP addresses Regex matched
md2 = Hash.new  # Hash for URLs Regex matched
md3 = Hash.new  # Hash for HTTP status code Regex matched
ip_address = ""
url = ""
status = ""

a1 = File.readlines("access_log")
##p a1.size  # debug

a1.each { 	|line|  "Line: #{line}" }###: p  # note out laast p
##puts a1  # debug

a1.each do |line|
  if md = /^([:\d\.]+) .*\[.*\"[A-Z]+*(.+) HTTP\/(\s(\d{3})\s/)/.match( "#{line}" )
    md1 = { :ip_address => md[1].to_s.push }
    md2 = { :url => md[2].to_s.push }
    md3 = { :status => md[3].to_f.push }
##    puts md1  # debug
##    puts md2  # debug
##    puts md3  # debug
  end
end

# debug do loop
##p md1.size
##p md2.size
##p md3.size
##puts md1
##puts md2
##puts md3

#  Header
puts "------------------------------------------------------------------------"
puts "Statistics for the Apache log file access_log "
puts "------------------------------------------------------------------------"

# ip frequencies
puts "Frequency of Client IP Addresses:                                       "
md1.each do { 	|k,v|| v }
  printf("%-20s", v); print "*" * v.to_i
  puts
end
puts

# url frequencies
puts "Frequency of URLs Accessed:                                             "
md5.each do { |k,v| v }
  printf("%-45s","#{md2[:url]}"); p md2.count
  puts
end
puts

# http frequences
puts "HTTP Status Codes Summary:                                              "
md3.each do { |k,v| v }
  printf("%-10s", "	#{md3[:status]}"); #percentage goes here ????
  puts
end
