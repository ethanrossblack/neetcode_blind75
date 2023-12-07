require "./most_water"

RSpec.describe "#max_area" do
  describe "returns the maximum amount of water a container can store" do
    it "Case 1" do
      height = [1,8,6,2,5,4,8,3,7]
      expected = 49
  
      expect(max_area(height)).to eq(expected)
    end

    it "Example 2" do
      height = [1,1]
      expected = 1
  
      expect(max_area(height)).to eq(expected)
    end
  end
end
