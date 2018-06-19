#!/usr/bin/env ruby
# frozen_string_literal: true

def move(tt, xx, yy)
  xx.abs + yy.abs <= tt && (xx + yy) % 2 == tt % 2
end

n = gets.to_i
t, x, y = 0, 0, 0
n.times do
  tn, xn, yn = gets.split.map(&:to_i)
  t, x, y = tn - t, xn - x, yn - y
  unless move(t, x, y)
    puts 'No'
    exit
  end
end
puts 'Yes'
