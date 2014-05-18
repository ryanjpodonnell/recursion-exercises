require_relative "../ruby/deep_dup"

describe "#deep_dup" do
  let(:original) { [1, [2], [3, [4]]] }

  it "should copy every element of a given array, even elements that are arrays." do
    expect(deep_dup([1, 2, 3])).to eq([1, 2, 3])
    expect(deep_dup([1, 2, [3]])).to eq([1, 2, [3]])
    expect(deep_dup(original)).to eq([1,[2],[3,[4]]])
  end
  
  it "should return an empty array when given one" do
    expect(deep_dup([])).to eq([])
  end
  
  it "should handle simple arrays" do
    expect(deep_dup([1, 2, 3])).to eq([1, 2, 3])
    expect(deep_dup(["just", "testing", "this"])).to eq(["just", "testing", "this"])
  end
  
  it "should handle various types of deeply nested arrays" do
    expect(deep_dup([[1]])).to eq([[1]])
    expect(deep_dup([[[[["five"]]]]])).to eq([[[[["five"]]]]])
  end
  
  it "should be able to dup many classes of elements" do
    expect(deep_dup([1, "lol", :test, [3.0]])).to eq([1, "lol", :test, [3.0]])
  end
  
  it "is not #dup, and the returned array is not affected by further modifications like in #dup. " do
    copy1 = original.dup
    copy2 = deep_dup(original)
    copy1[2][1][1] = 30
    
    #This shows that #dup does not deeply dup, as it alters the original.
    expect(copy1).to eq(original)
    
    #This shows that #deep_dup does, as it does NOT alter the original.
    expect(copy2).to_not eq(original)
  end
  
  it "should call itself recursively when the given array contains arrays" do
    should_receive(:deep_dup).at_least(:twice).and_call_original
    expect(deep_dup([1, 2, [3]])).to eq([1, 2, [3]]) 
  end
end