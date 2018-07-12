# understand
#   make merge sort method
#
# i/o
#   input - arr
#   output - sorted arr
#
# algorithm
#   if arr > 1
#     first = method(half arr)
#     second = "
#   end
#   first > second ? concat : concat
#
# reflection
#   there is an Array#mid that would nicely replace the half variable i define

def merge(arr1, arr2)
  sorted_arr = []
  n = 0
  arr1.each do |int|
    until arr2[n].nil? || arr2[n] > int
      sorted_arr << arr2[n]
      n += 1
    end
    sorted_arr << int
  end
  sorted_arr += arr2[n..-1]
end

def merge_sort(arr)
  first, second = [], []
  if arr.size > 1
    half = arr.size / 2
    first = merge_sort(arr[0...half])
    second = merge_sort(arr[half..-1])
  else
    return arr
  end
  merge(first, second)
end

p merge_sort([1])
p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]