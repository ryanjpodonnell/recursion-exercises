require_relative '../wrapping_up'

describe "#subsets" do
  it "should return all the subsets of a given array" do
    expect(subsets([1, 2]).sort).to eq([[], [1], [2], [1, 2]].sort)
    expect(subsets([1, 2, 3]).sort).to eq([[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]].sort)
  end
  
  it "should return a subset containing an empty array, when given an empty array" do
    expect(subsets([])).to eq([[]])
  end
  
  it "should handle single element arrays" do
    expect(subsets([1])).to eq([[], [1]])
  end
  
  it "should call itself recursively" do
    should_receive(:subsets).at_least(:twice).and_call_original
    subsets([1, 2])
  end
end