#!/usr/bin/env ruby
# frozen_string_literal: true

o = gets.chomp.chars
e = gets.chomp.chars
o.zip(e) { |a| print a.join }
puts
