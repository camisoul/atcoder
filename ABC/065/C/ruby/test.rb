#!/usr/bin/env ruby
# frozen_string_literal: true

MODS = 10**9 + 7

def mod_fact(count)
  x = 1
  2.upto(count) do |i|
    x = x * i % MODS
  end
  x
end

n, m = gets.split.map(&:to_i).minmax
case m - n
when 0
  p mod_fact(n)**2 * 2 % MODS
when 1
  p mod_fact(n)**2 * m % MODS
else
  p 0
end
