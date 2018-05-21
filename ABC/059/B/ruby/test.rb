#!/usr/bin/env ruby
# frozen_string_literal: true

a = gets.to_i
b = gets.to_i
if a > b
  puts 'GREATER'
elsif a < b
  puts 'LESS'
else
  puts 'EQUAL'
end
