def times(num)
  count = 0
  while count < num
    yield(count)
    count += 1
  end
  num
end

times(6){|n| puts "The number #{n}"}
