#!/usr/bin/env ruby
# frozen_string_literal: true

t = 1
1.upto(gets.to_i) do |i|
  t = t * i % 1000000007
end
p t
