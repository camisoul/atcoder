#!/usr/bin/env ruby
# frozen_string_literal: true

a, b, x = gets.split.map(&:to_i)
p b / x - (a.zero? ? -1 : (a - 1) / x)
