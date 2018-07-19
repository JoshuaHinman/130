birds = %w(raven finch hawk eagle osprey)
def practice(array)
  yield array
end

practice(birds) do |arr|
  puts "Raptors: #{arr[2,arr.length-1]}"
end
