#!/usr/bin/env ruby
# frozen_string_literal: true

gets
as = gets.split
bs = Hash.new(0)
as.each do |a|
  bs[a] += 1
end

total = 0
bs.each_pair do |k, v|
  s = k.to_i
  if s < v
    total += v - s
  elsif s > v
    total += v
  end
end

p total
