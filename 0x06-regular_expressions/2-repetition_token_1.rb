#!/usr/bin/env ruby

var = /hb{0,1}tn/
puts ARGV[0].scan(var).join
