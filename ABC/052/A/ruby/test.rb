#!/usr/bin/env ruby
# frozen_string_literal: true

a, b, c, d = gets.split(' ').map(&:to_i)
puts [a * b, c * d].max
