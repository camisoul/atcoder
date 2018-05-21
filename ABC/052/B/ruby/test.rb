#!/usr/bin/env ruby
# frozen_string_literal: true

gets
p [m = 0, gets.chars.map { |c| c == 'I' ? (m += 1) : (m -= 1) }.max].max
