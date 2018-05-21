#!/usr/bin/env ruby
# frozen_string_literal: true

k, s = gets.split(' ').map(&:to_i)
a = 0
(k + 1).times do |x|
  (k + 1).times do |y|
    z = s - x - y
    a += 1 if z.between?(0, k)
  end
end
puts a
