def compute(str = nil)
  if block_given?
    yield(str)
  else
    'Does not compute.'
  end
end

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'
p compute(40) {|v| "I'm #{v} years old!"}
p compute("Josh") {|v| "My name is #{v}."}