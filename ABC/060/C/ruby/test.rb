#!/usr/bin/env ruby
# frozen_string_literal: true

n, t = gets.split.map(&:to_i)
ts = gets.split.map(&:to_i)
if n == 1
  p t
else
  p n * t - ts.each_cons(2).map { |i| i[1] - i[0] }.map { |i| [t - i, 0].max }.inject(:+)
end
