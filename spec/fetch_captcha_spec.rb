require 'spec_helper'

RSpec.describe SCR::FetchCaptcha do
  subject(:fetcher) { described_class.new }

  describe '#regex_html' do
    it 'responds to regex_html' do
      expect(fetcher).to respond_to :regex_html
    end
  end

  describe '#url' do
    it 'responds to url' do
      expect(fetcher).to respond_to :url
    end
  end

  describe '#download' do
    context 'when regex_html and url are empty' do
      it 'returns nil' do
        expect(fetcher.download).to be_nil
      end
    end
  end
end
