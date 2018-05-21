#!/usr/bin/env ruby
# frozen_string_literal: true

def calc(width, height)
  return 0 if (height % 3).zero?
  s = [width]
  (1..(width / 2)).each do |x|
    r1 = x * height
    r2 = (width - x) * (height / 2)
    r3 = (width - x) * (height - height / 2)
    s.push([r1, r2, r3].max - [r1, r2, r3].min)
  end
  s.min
end
h, w = gets.split.map(&:to_i)
p [calc(w, h), calc(h, w)].min
