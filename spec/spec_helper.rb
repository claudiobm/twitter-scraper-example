require 'pry'

# frozen_string_literal: true
Dir['spec/support/**/*.rb'].each { |f| load f }

RSpec.configure do |config|
  config.mock_framework = :rspec
  config.order = 'random'
end

require 'twitter_scraper_example'
