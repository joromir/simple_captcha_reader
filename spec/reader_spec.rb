require 'spec_helper'

RSpec.describe SCR::Reader do
  subject(:reader) { described_class.new(image_path: image_path) }

  describe '#to_s' do
    let(:image_path) { './lib/samples/testocr.png' }

    it 'returns the expected text for testimage' do
      expected_sample = [
        'This is a lot of 12 point text to test the',
        'ocr code and see if it works on all types',
        'of file format.',
        '',
        'The quick brown dog jumped over the',
        'lazy fox. The quick brown dog jumped',
        'over the lazy fox. The quick brown dog',
        'jumped over the lazy fox. The quick',
        'brown dog jumped over the lazy fox.'
      ]

      expect(reader.to_s).to include(*expected_sample)
    end

    it 'is an instance of String' do
      expect(reader.to_s).to be_an_instance_of String
    end
  end
end
