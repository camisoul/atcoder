#!/usr/bin/env ruby
# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)
p [a + b, b + c, c + a].min
