#!/usr/bin/env ruby

var = /^[0, 9]{10}$/

puts ARGV[0].scan(var).join
