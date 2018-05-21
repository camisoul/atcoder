#!/usr/bin/env ruby
# frozen_string_literal: true

def man(xns, yns)
  (xns[0] - yns[0]).abs + (xns[1] - yns[1]).abs
end

n, m = gets.split.map(&:to_i)
xs = []
n.times { xs.push(gets.split.map(&:to_i)) }
ys = []
m.times { ys.push(gets.split.map(&:to_i)) }
n.times do |i|
  mi = 0
  mv = 1 << 31
  m.times do |j|
    mh = man(xs[i], ys[j])
    if mh < mv
      mi = j + 1
      mv = mh
    end
  end
  p mi
end
