require File.join(File.dirname(__FILE__), '../item')

describe Item do

  subject(:item) {described_class.new('apple',5,90)}

  describe '#to_s' do
    it 'converts whats passed in to a string format' do
      expect(item.to_s).to eq("apple, 5, 90")
    end
  end
end
