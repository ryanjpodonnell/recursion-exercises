require_relative "../fib"

describe "#fib_recursive" do
  # 0 1 1 2 3 5 8 13 21 -- For Reference
  
  it "should return the n numbers of fibonacci numbers" do
    expect(fib_recursive(4)).to eq([0,1,1,2])
    expect(fib_recursive(6)).to eq([0,1,1,2,3,5])
    expect(fib_recursive(9)).to eq([0,1,1,2,3,5,8,13,21])
  end
  
  it "should correctly handle the base cases" do
    expect(fib_recursive(1)).to eq([0])
    expect(fib_recursive(2)).to eq([0,1])
  end
  
  it "should return an empty array if given a negative n" do
    expect(fib_recursive(-10)).to eq([])
  end
  
  it "should call itself recursively" do
    should_receive(:fib_recursive).at_least(:twice).and_call_original
    fib_recursive(5)
  end
end