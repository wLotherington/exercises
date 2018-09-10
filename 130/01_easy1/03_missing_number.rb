def missing(arr)
  new_arr = (arr.first..arr.last).to_a
  arr.each { |n| new_arr.delete(n) }
  new_arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []