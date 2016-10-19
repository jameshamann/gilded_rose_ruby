require File.join(File.dirname(__FILE__), '../gilded_rose')

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("apple", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "apple"
    end
  end

end
