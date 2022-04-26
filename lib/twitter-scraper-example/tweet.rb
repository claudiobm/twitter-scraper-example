# frozen_string_literal: true

module TwitterScraperExample
  class Tweet
    def self.get(term, size: 100)
      new(term, size: size).send(:get)
    end

    private

    attr_reader :term, :size

    def initialize(term, size:)
      @term = term
      @size = size
    end

    private_class_method :new

    def get
      elements
    end

    def elements
      parser.call
    end

    def request
      gateway.search(term)
    end

    def gateway
      @gateway ||= Gateway.new
    end

    def parser
      @parser ||= Parser.new(request)
    end
  end
end
