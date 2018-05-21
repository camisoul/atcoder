#!/usr/bin/env ruby
# frozen_string_literal: true

a, b, c = gets.split
puts(a[-1] == b[0] && b[-1] == c[0] ? 'YES' : 'NO')
