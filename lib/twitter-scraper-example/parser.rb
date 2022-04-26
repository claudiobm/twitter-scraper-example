# frozen_string_literal: true

module TwitterScraperExample
  class Parser
    attr_reader :request

    def initialize(request)
      @request = request
    end

    def call
      elements.map do |element|
        {  }
      end
    end

    private

    def elements
      sleep 5
      request.find_all('main section > div > div')
    end
  end
end
