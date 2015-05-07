require 'capybara'
require_relative '../happy_or_sad_calculator'

Capybara.app = HappyOrSadCalculator

RSpec.configure do |config|
  config.include Capybara::DSL
end