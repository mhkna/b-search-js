const bSearch = (val, arr, smallIndex=0, bigIndex=arr.length-1) => {
  if (arr.includes(val)) {
    let midIndex = Math.floor((smallIndex + bigIndex) / 2)
    if (val < arr[midIndex]) {
      return bSearch(val, arr, smallIndex, midIndex-1)
    } else if (val > arr[midIndex]) {
      return bSearch(val, arr, midIndex+1, bigIndex)
    } else {
      return midIndex;
    }
  } else {
    return "the value is not in the array."
  }
};




/*
BINARY SEARCH

def bSearch(val, arr, min = 0, max = arr.length - 1)
  unless arr.include?(val)
    return "NOT FOUND"
  end
  mid_index = (max + min) / 2
  if val < arr[mid_index]
    bSearch(val, arr, min, mid_index - 1)
  elsif val > arr[mid_index]
    bSearch(val, arr, mid_index + 1, max)
  else
    return mid_index
  end
end


MERGE SORT

def merge_sort(arr)
  return arr if arr.length <= 1

  mid_index = arr.length / 2
  left = arr[0..mid_index-1]
  right = arr[mid_index..arr.length]

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  merge(sorted_left, sorted_right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left[0] <= right[0]
      result << left.shift
    else
      result << right.shift
    end
  end
  result.concat(left).concat(right)
end


QUICK SORT

def quicksort(arr)
  return arr if arr.length <= 1

  pivot = arr.pop
  left = []
  right = []
  i = 0
  while i < arr.length
    if arr[i] < pivot
      left << arr[i]
    else
      right << arr[i]
    end
    i += 1
  end

  sorted_left = quicksort(left)
  sorted_right = quicksort(right)

  sorted_left.push(pivot).concat(sorted_right)
end





NEG POS SKILLD EX
arr = [-3, -2, -1, 0, 1, 2, 4]

def square_sort(arr)
  split = arr.partition { |num| num >= 0 }
  positives = split[0]
  negatives = split[1]

  abs_neg = negatives.reverse.map do |neg|
    neg.abs
  end

  sorted_arr = []
  until positives.empty? || abs_neg.empty?
    if positives[0] < abs_neg[0]
      sorted_arr << positives.shift
    else
      sorted_arr << abs_neg.shift
    end
  end
  sorted_arr.concat(positives).concat(abs_neg)

  squared = sorted_arr.map do |num|
    num ** 2
  end
  squared
end

square_sort(arr)
*/
