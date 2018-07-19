def step(start, finish, inc)
  index = start
  while index <= finish
    yield(index)
    index += inc
  end
  index
end

step(1, 10, 3) { |value| puts "value = #{value}" }