#!/usr/bin/ruby

# File: histogram.rb
# Student: Kevin Howell
# Class: CIT383-002 2018 Spring
# Date: 20180209

# variables
n1 = ""
n2 = 1
n = 0

# prompt user input
puts "How many random integer numbers do you want to generate? "
n1 = gets.chomp.to_i  #number of random integers to generate
##p n1

puts "Please input the maximum value for the random numbers: "
n2 = gets.chomp.to_i  #maximum value
##p n2

# Array initialize to n2 size, Hash initialize
num_array = Array.new(n1)
freq = Hash.new(0)

# Loop to get n1 total numbers
num_array.each do |gennmbr|
  until n == n1
    gennmbr = rand(1..n2)
    num_array.push gennmbr
    n = n + 1
  end
end
num_array.compact!
freq[num_array.group_by(&:itself).map {|k,v| [k, v.size] }]

#####num_array.each do |gennmbr|
#####  freq[gennmbr] += 1
#####end
#####freq = freq.sort_by{|k,v| v}
#####freq.reverse!
puts hash

# display results
hash.each.sort do |k,v|
  # print "#{k} \t"
  # v.times {print "#"}
  print "The frequency of  #{k} | #{v.times {print '#'}}"
  puts
  over_quota
end

