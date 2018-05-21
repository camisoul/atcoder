#!/usr/bin/env ruby
# frozen_string_literal: true

n, w = gets.split.map(&:to_i)
puts '#' * (w + 2)
n.times do
  puts "##{gets.chomp}#"
end
puts '#' * (w + 2)
