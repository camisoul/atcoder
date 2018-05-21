#!/usr/bin/env ruby
# frozen_string_literal: true

gets
bs, cs = gets.split.map(&:to_i).partition { |x| x < 3200 }
c = bs.map { |x| x / 400 }.uniq.size
puts "#{[c, 1].max} #{c + cs.size}"
