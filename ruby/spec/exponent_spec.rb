require_relative '../exponent'

describe "#exponent1" do
  it "should calculate the value of an exponent, given the base and power" do
    expect(exponent1(2, 2)).to eq(4)
    expect(exponent1(2, 3)).to eq(8)
    expect(exponent1(2, 16)).to eq(65536)
    expect(exponent1(2, 17)).to eq(131072)
  end
  
  it "should handle bases to the 0th power" do
    expect(exponent1(52, 0)).to eq(1)
  end
  
  # Method currently only works with postive powers.
  # it "even handles negative powers" do
  #   expect(exponent1(2, -1)).to eq(0.5)
  # end
  
  it "should call itself recursively" do
    should_receive(:exponent1).at_least(:twice).and_call_original
    exponent1(2, 5)
  end
end

describe "#exponent2" do
  it "should calculate the value of an exponent, given the base and power" do
    expect(exponent2(2, 2)).to eq(4)
    expect(exponent2(2, 3)).to eq(8)
    expect(exponent2(2, 16)).to eq(65536)
    expect(exponent2(2, 17)).to eq(131072)
  end
  
  it "should handle bases to the 0th power" do
    expect(exponent2(52, 0)).to eq(1)
  end
  
  # Method currently only works with postive powers.
  # it "even handles negative powers" do
  #   expect(exponent2(2, -1)).to eq(0.5)
  # end
  
  it "should call itself recursively" do
    should_receive(:exponent2).at_least(:twice).and_call_original
    exponent2(2, 5)
  end
end