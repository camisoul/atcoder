#!/usr/bin/env ruby
# frozen_string_literal: true

w, a, b = gets.split.map(&:to_i)
p [(a - b).abs - w, 0].max
