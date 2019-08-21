def map(source_array)
  new_Array = []
  source_array.each do |x|
    new_Array.push(yield(x))
  end
  new_Array
end

def reduce(source_array, starting_point = 0)
   i = starting_point
  source_array.each do |x|
    if i == false
      return false
    end
    i = yield(i,x)
  end
  i
end