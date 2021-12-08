require File.join(File.dirname(__FILE__), 'gilded_rose')

RSpec.describe GildedRose do

  RSpec.describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "fixme"
    end
  end

end