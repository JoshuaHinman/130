def divisors(num)
  (1..num).select{|d| num % d == 0}
end

def divisors2(num)
  new_arr = []
  (1..(num+1)/2).each do |d|
    if num % d == 0
      new_arr << d
      new_arr << num / d
    end
  end
  new_arr.uniq.sort
end

p divisors2 22