#!/usr/bin/env ruby
# frozen_string_literal: true

gets
as = gets.split.map(&:to_i)
p as.max - as.min
