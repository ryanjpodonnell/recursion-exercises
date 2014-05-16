def deep_dup(arr)
  new_arr = []
  arr.each do |el|
    unless el.is_a?(Array)
      new_arr << el
    else
      new_arr << deep_dup(el)
    end
  end
  new_arr
end

# original = [1, [2], [3, [4]]]
# 
# copy1 = original.dup
# copy2 = deep_dup(original)
# 
# copy1[2][1][0] = 30
# copy2[2][1][0] = 45
# 
# p original
# p copy1
# p copy2