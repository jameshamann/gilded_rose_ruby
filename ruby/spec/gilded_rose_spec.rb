require File.join(File.dirname(__FILE__), '../gilded_rose')
require File.join(File.dirname(__FILE__), '../item')


describe GildedRose do
  let(:item) {Item.new('apple',5,20)}
  let(:brie) {Item.new('Aged Brie', 5, 20)}
  subject(:gilded_rose) {described_class.new([item, brie])}


  describe "#update_quality" do
    it "does not change the name" do
      gilded_rose.update_quality
      expect(item.name).to eq "apple"
    end

      it 'degrades at the normal rate' do
        gilded_rose.update_quality
        expect(item.quality).to eq 19
      end

      it "quality degrades twice as fast once the sell by date has passed" do
        10.times {gilded_rose.update_quality}
        expect(item.quality).to eq 5
      end

      it "the quality of an item is never negative" do
        20.times {gilded_rose.update_quality}
        expect(item.quality).to eq 0
      end

      it "aged brie increases in quality as time goes on" do
        5.times {gilded_rose.update_quality}
        expect(brie.quality).to eq 25
      end

      xit "the quality of an item is never more than 50" do

      end

      xit "Sulfuras never degrades in quality" do

      end

      xit "backstage pass quality increases by two within 10 daysor less of the concert" do

      end

      xit "backstage pass quality increases by 3 within 5 days or less of concert" do

      end

      xit "backstage pass quality drops to 0 after the concert has taken place" do

      end

      xit "conjured items degrade twice as fast as normal items" do

    end
  end
end
