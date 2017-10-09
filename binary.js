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
arrayay = [1, 4, 9, 19, 45, 62, 66, 78, 93, 99]

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

p bSearch(3, arrayay)
*/
