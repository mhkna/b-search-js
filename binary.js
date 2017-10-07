arrayay = [1, 4, 9, 19, 45, 62, 66, 78, 93]


const bSearch = (val, arr, min, max) => {
  mid = midVal(arr)
  if (mid < val) {

  } else if (mid > val) {

  } else {
    return mid;
  }
};

const midIndex = (arr) => {
  return Math.floor(arr.length / 2)
};

const midVal = (arr) => {
  return arr[midIndex(arr)]
};

bSearch(4, arrayay, 1, 4)
