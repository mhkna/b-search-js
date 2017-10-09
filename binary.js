arrayay = [1, 4, 9, 19, 45, 62, 66, 78, 93]


const bSearch = (val, arr, smallIndex=0, bigIndex=arr.length-1) => {
  midIndex = Math.floor((smallIndex + bigIndex) / 2)
  if (mid < val) {

  } else if (mid > val) {

  } else {
    return mid;
  }
};


bSearch(4, arrayay, min, max)




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
