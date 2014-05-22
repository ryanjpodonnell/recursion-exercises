require_relative "../binary"

describe "#binary_search" do
  let(:odd_arr) { [2,4,5,6,7,9,12] }
  let(:even_arr) { [0,1,2,3,4,5,6,7,8,9] }
  
  it "should return the index of the target" do
    expect(binary_search(odd_arr, 4)).to eq(1)
    expect(binary_search(odd_arr, 5)).to eq(2)
    expect(binary_search(odd_arr, 6)).to eq(3)
    expect(binary_search(odd_arr, 7)).to eq(4)
    expect(binary_search(odd_arr, 9)).to eq(5)
    
    expect(binary_search(even_arr, 1)).to eq(1)
    expect(binary_search(even_arr, 2)).to eq(2)
    expect(binary_search(even_arr, 3)).to eq(3)
    expect(binary_search(even_arr, 4)).to eq(4)
    expect(binary_search(even_arr, 5)).to eq(5)
    expect(binary_search(even_arr, 6)).to eq(6)
    expect(binary_search(even_arr, 7)).to eq(7)
    expect(binary_search(even_arr, 8)).to eq(8)
  end
  
  it "should work if the target is already at the middle point" do
    expect(binary_search(odd_arr, 6)).to eq(3)
  end
  
  it "should correctly return the index of targets at the edges" do
    expect(binary_search(odd_arr, 2)).to eq(0)   
    expect(binary_search(odd_arr, 12)).to eq(6)
    
    expect(binary_search(even_arr, 0)).to eq(0)
    expect(binary_search(even_arr, 9)).to eq(9)    
  end
  
  it "should return nil if the target does not exist in the array" do
    expect(binary_search(odd_arr, 35)).to eq(nil)
  end
  
  it "should return nil if the given array is empty" do
    expect(binary_search([], 2)).to eq(nil)
  end
  
  it "calls itself recursively" do
    should_receive(:binary_search).at_least(:twice).and_call_original
    binary_search(odd_arr, 7)
  end
end