#!/usr/bin/env ruby
# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
puts a + b >= 10 ? 'error' : a + b
