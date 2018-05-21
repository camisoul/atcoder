#!/usr/bin/env ruby
# frozen_string_literal: true

a, b = gets.split(' ').map(&:to_i)
a = 14 if a == 1
b = 14 if b == 1
puts(if a > b
       'Alice'
     elsif a < b
       'Bob'
     else
       'Draw'
     end)
