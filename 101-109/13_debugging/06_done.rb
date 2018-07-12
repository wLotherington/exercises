# we have used up all of our working memory
# we have a recursive method but no break condition


def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array) if n > 0
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']