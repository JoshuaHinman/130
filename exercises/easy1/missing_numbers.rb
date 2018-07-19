def missing(array)
  new_arr = []
  idx = array[0]
  while idx < array.last
    new_arr << idx unless array.include?(idx)
    idx += 1
  end
  new_arr
end

def missing2(array)
  (array.first..array.last).to_a - array
end

p missing([-3, -2, 1, 5])
p missing([1, 5])