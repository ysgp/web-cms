require_relative "spec_helper"

require 'rack/test'
require 'capybara'
require 'capybara/dsl'
require 'capybara_minitest_spec'

Capybara.app = Nesta::App.new
# Capybara.default_driver = :webkit

class MiniTest::Spec
  include Capybara::DSL
  include Rack::Test::Methods
end

class Capybara::Session
  def params
    Hash[*URI.parse(current_url).query.split(/\?|=|&/)]
  end
end
