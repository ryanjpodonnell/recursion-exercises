require_relative "../ruby/make_change"

describe "#make_change" do
  let(:murica) { [25, 10, 5, 1] }
  let(:wonky) { [10, 7, 1] }
  
  it "should produce the least number of coins to produce a given amount, from a given a set" do
    expect(make_change(26, murica)).to eq([25, 1])
    expect(make_change(30, murica)).to eq([25, 5])
    expect(make_change(35, murica)).to eq([25, 10])
    expect(make_change(50, murica)).to eq([25, 25])
    
    expect(make_change(11, wonky)).to eq([10, 1])
    expect(make_change(17, wonky)).to eq([10, 7])
    expect(make_change(20, wonky)).to eq([10, 10])
  end
  
  it "should produce the LEAST amount coins for edge cases" do
    expect(make_change(14, wonky)).to eq([7, 7])
    expect(make_change(15, wonky).sort).to eq([7, 7, 1].sort)
    expect(make_change(16, wonky).sort).to eq([7, 7, 1, 1].sort)    
  end
  
  it "should return an empty array if the amount <= 0" do
    expect(make_change(0, murica)).to eq([])
    expect(make_change(-50, murica)).to eq([]) #Troll protection
  end
  
  it "should call itself recursively" do
    should_receive(:make_change).at_least(:twice).and_call_original
    make_change(11, murica)
  end
end