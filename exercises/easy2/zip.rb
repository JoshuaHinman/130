def zip(array1, array2)
  array1.map.with_index{|item, idx| [item, array2[idx]] }
end


p zip([1,2,3,4], [2,4,6,8])