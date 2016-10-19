require File.join(File.dirname(__FILE__), '../gilded_rose')

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("apple", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "apple"
    end
  end

  it "quality degrades twice as fast once the sell by date has passed" do

  end

  it "the quality of an item is never negative" do

  end

  it "aged brie increases in quality as time goes on" do

  end

  it "the quality of an item is never more than 50" do

  end

  it "Sulfuras never degrades in quality" do

  end

  it "backstage pass quality increases by two within 10 daysor less of the concert" do

  end

  it "backstage pass quality increases by 3 within 5 days or less of concert" do

  end

  it "backstage pass quality drops to 0 after the concert has taken place" do
    
  end

end
