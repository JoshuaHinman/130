def each(arr)
  idx = 0
  while idx < arr.length
    yield(arr[idx])
    idx += 1
  end
  arr
end

each(['Beth', 'Josh', '4567', 'Zen']){|s| puts s}