#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets
puts s.rindex('Z') - s.index('A') + 1
