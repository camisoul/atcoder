#!/usr/bin/env ruby
# frozen_string_literal: true

s = gets.chomp
while s.size > 1
  s.chop!
  next if s.size.odd?
  h = s.size / 2
  if s[0, h] == s[h, h]
    p s.size
    exit
  end
end
