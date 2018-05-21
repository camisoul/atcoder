#!/usr/bin/env ruby
# frozen_string_literal: true

gets
t = gets.split.map(&:to_i)
s = t.sum # t.inject(:+) (<ruby2.4)
gets.to_i.times do
  a, b = gets.split.map(&:to_i)
  p s - t[a - 1] + b
end
