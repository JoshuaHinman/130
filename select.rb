def select(arr)
  idx = 0
  new_arr = []
  while idx < arr.length
    new_arr << arr[idx] if yield(arr[idx])
    idx += 1
  end
  new_arr
end



p select([1,2,3,4,5,6,7,8,9]){|n| n.odd?}