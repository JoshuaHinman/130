def reduce(arr, init = 0)
  idx = 0
  acc = init
  while idx < arr.length
    acc = yield(acc,arr[idx])
    idx += 1
  end
  acc
end

p reduce([1,2,3,4,5,6]){|acc,num| acc + num }