# frozen_string_literal: true

require 'spec_helper'

describe TwitterScraperExample::Tweet do
  describe '.get' do
    let(:term) { 'saúde' }

    context 'with default limit' do
      subject(:tweets) { described_class.get(term) }

      it 'returns 100 tweets' do
        expect(tweets).to be_nil
      end
    end
  end
end
