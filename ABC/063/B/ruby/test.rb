#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp.chars
puts s.uniq.size == s.size ? 'yes' : 'no'
