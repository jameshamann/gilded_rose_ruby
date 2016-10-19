require File.join(File.dirname(__FILE__), '../gilded_rose')
require File.join(File.dirname(__FILE__), '../item')


describe GildedRose do
  let(:item) {Item.new('apple',5,20)}
  subject(:gilded_rose) {described_class.new([item])}


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

      xit "the quality of an item is never negative" do

      end

      xit "aged brie increases in quality as time goes on" do

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
