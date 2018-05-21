#!/usr/bin/env ruby
# frozen_string_literal: true

a, b, c, d = gets.split.map(&:to_i)
puts %w[Balanced Left Right][a + b <=> c + d]
