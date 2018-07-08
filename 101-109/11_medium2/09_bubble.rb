# understand
#   create bubble sort algorithm
#
# i/o
#   input - array
#   output - mutated sorted array
#
# algorithm
#   iterate with each with index
#   if arr[idx] > arr[idx+1] swap
#   swapcount increase
#   loop until swapcount = 0
#
# reflection
#   since I only need the index count, I could have just done an iterator instead of an each. I don't actually use the element at all
#   they used a next if to skip vs an if to run. i think i like the next if better
#   also, i originally returns the arr instead of nil. my i/o plan was incorrect

def bubble_sort!(arr)
  loop do
    swapped = false
    arr.each_with_index do |_, idx|
      if idx + 1 != arr.size && arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        swapped = true
      end
    end
    break unless swapped
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = []
bubble_sort!(array)
p array == []

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)