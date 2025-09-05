# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.size <= 1

  halfway_point = arr.size / 2
  sorted_left = merge_sort(arr.slice(...halfway_point))
  sorted_right = merge_sort(arr.slice(halfway_point..))

  merge(sorted_left, sorted_right)
end

def merge(left, right)
  Array.new(left.size + right.size) do
    if right.empty?
      left.shift
    elsif left.empty?
      right.shift
    else
      left.first <= right.first ? left.shift : right.shift
    end
  end
end

print 'Please enter a list of numbers separated by spaces: '
arr = gets.split.map(&:to_i)
p merge_sort(arr)
