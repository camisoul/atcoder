#!/usr/bin/env ruby
# frozen_string_literal: true

puts gets.chomp !~ /\A(dream|erase|dreamer|eraser)+\z/ ? 'NO' : 'YES'
