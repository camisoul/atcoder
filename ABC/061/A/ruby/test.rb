#!/usr/bin/env ruby
# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)
puts c.between?(a, b) ? 'Yes' : 'No'
