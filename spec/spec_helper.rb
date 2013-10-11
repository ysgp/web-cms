if ENV['ENV'].eql? "coverage"
  require 'simplecov'
  SimpleCov.command_name "minitest"
end

ENV['ENV'] = "test"

require "minitest/autorun"

alias :context :describe

require File.expand_path('../../app', __FILE__)

alias :to_s :inspect
