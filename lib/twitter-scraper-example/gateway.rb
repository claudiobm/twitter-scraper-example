# frozen_string_literal: true
require 'selenium-webdriver'
require 'capybara'

module TwitterScraperExample
  class Gateway
    TWITTER_BASE_URL='https://twitter.com'

    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)
    end
    Capybara.javascript_driver = :chrome
    Capybara.configure do |config|
      config.default_max_wait_time = 15
      config.default_driver = :selenium
    end

    attr_reader :browser, :driver

    def initialize
      @browser = Capybara.current_session
      @driver = @browser.driver.browser
    end

    def search(term)
      browser.visit "#{TWITTER_BASE_URL}/search?q=#{term}"

      browser
    end
  end
end
