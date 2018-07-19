items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*array, last |
  puts array.join(', ')
  puts last
end

gather(items) do |apples, *cs, w|
  puts apples
  puts cs.join(', ')
  puts w
end

gather(items) do |apples, *rest|
  puts apples
  puts rest.join(', ')
end

gather(items) do |a, b, c, d|
  puts "#{a}, #{b}, #{c} and #{d}"
end