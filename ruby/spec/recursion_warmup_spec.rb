require_relative '../recursion_warmup'

describe "#range" do
  it "should return an array of all the numbers between two given numbers" do
    expect(range(1, 10)).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    expect(range(1, 100)).to eq((1..100).to_a)
    expect(range(1, 1000)).to eq((1..1000).to_a)
  end
  
  it "should return a single element array when the start and end numbers are the same" do
    expect(range(5, 5)).to eq([5])
  end
  
  it "should be able to return a range with negative numbers as well" do
    expect(range(-5, 5)).to eq([-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5])
  end
  
  it "should raise an argument error if two numbers aren't given" do
    expect {range(1)}.to raise_error(ArgumentError)
  end
  
  it "should call itself recursively" do
    should_receive(:range).at_least(:twice).and_call_original
    range(1, 10)
  end
end

describe "#recursive_sum" do
  it "should return the sum of the numbers in a given array" do
    expect(recursive_sum([1, 2, 3, 4, 5])).to eq(15)
    expect(recursive_sum((1..100).to_a)).to eq((1..100).inject(:+))
  end
  
  it "should return nil when given an empty array" do
    expect(recursive_sum([])).to eq(nil)
  end
  
  it "should handle single element arrays" do
    expect(recursive_sum([100])).to eq(100)
  end
  
  it "should be able to add negative numbers as well" do
    expect(recursive_sum((-5..5).to_a)).to eq(0)
    expect(recursive_sum((-10..0).to_a)).to eq(-55)
  end
  
  it "should call itself recursively" do
    should_receive(:recursive_sum).at_least(:twice).and_call_original
    recursive_sum([1,2,3,4,5])
  end
end