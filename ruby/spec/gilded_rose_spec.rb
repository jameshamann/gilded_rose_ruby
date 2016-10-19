require File.join(File.dirname(__FILE__), '../gilded_rose_refactor')
require File.join(File.dirname(__FILE__), '../item')


describe GildedRoseRefactor do
  let(:item) {Item.new('apple',5,20)}
  let(:brie) {Item.new('Aged Brie', 5, 20)}
  let(:sulfuras) {Item.new('Sulfuras, Hand of Ragnaros',6,30)}
  let(:backstage) {Item.new('Backstage passes to a TAFKAL80ETC concert',10,20)}
  subject(:gilded_rose) {described_class.new([item, brie, sulfuras, backstage])}


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

      it "the quality of an item is never more than 50" do
        50.times {gilded_rose.update_quality}
        expect(brie.quality).to eq 50
      end

      it "Sulfuras never degrades in quality" do
        20.times {gilded_rose.update_quality}
        expect(sulfuras.quality).to eq 30
      end

      it "backstage pass quality increases by two within 10 daysor less of the concert" do
        5.times {gilded_rose.update_quality}
        expect(backstage.quality).to eq 30
      end

      it "backstage pass quality increases by 3 within 5 days or less of concert" do
        9.times {gilded_rose.update_quality}
        expect(backstage.quality).to eq 42
      end

      it "backstage pass quality drops to 0 after the concert has taken place" do
        11.times {gilded_rose.update_quality}
        expect(backstage.quality).to eq 0
      end
  end
end
