//linkedlist
class LinkedList {
  constructor() {
    this.head = null;
    this.tail = null;
    this.length = 0;
  }
  push(value) {
    const node = new Node(value);
    this.length++;
    if (!this.head) {
      this.head = node;
    }
    else {
      this.tail.next = node;
    }
    this.tail = node;
  }
  pop() {
    return this.delete(this.length-1);
  }
  _find(value, test=this._test) {
    let current = this.head;
    let i = 0
    while(current) {
      if (test(value, current.value, i, current)) {
        return current;
      }
      current = current.next;
      i++;
    }
    return null;
  }
  get(index) {
    const node = this._find(index, this._testIndex);
    if (!node) return null;
    return node.value;
  }
  _test(a, b) {
    return a === b;
  }
  //double underscore
  _testIndex(search, dontCare, i) {
    return search === i;
  }
  delete(index) {
    if (index === 0) {
      const head = this.head;
      if (head) {
        this.head = head.next;
      }
      else {
        this.tail = this.head = null;
      }
      this.length--;
      return head.value;
    }

    const node = this._find(index-1, this._testIndex);
    const excise = node.next;
    if (!excise) return null;
    node.next = excise.next;
    if (node.next && !node.next.next) {
      this.tail = node.next;
    }
    this.length--;
    return excise.value;
  }
}

class Node {
  constructor(value) {
    this.value = value;
    this.next = null;
  }
}


//arraylist
class ArrayList {
  constructor() {
    this.length = 0;
    this.data = {};
  }
  push(value) {
    this.data[this.length] = value;
    this.length++;
  }
  pop() {
    return this.delete(this.length-1);
  }
  get(index) {
    return this.data[index];
  }
  delete(index) {
    const ans = this.data[index];
    this._collapseTo(index);
    return ans;
  }
  _collapseTo(index) {
    for (let i = index; i < this.length; i++) {
      this.data[i] = this.data[i+1];
    }
    delete this.data[this.length-1];
    this.length--;
  }
}


//binary serach
class Tree {
  constructor() {
    this.root = null;
  }
  toObject() {
    return this.root;
  }
  add(value) {
    if (this.root === null) {
      // if no head, create new head
      this.root = new Node(value);
      return;
    }

    let current = this.root;
    while(true) {
      if (current.value > value) {
        //go left

        if (current.left) {
          current = current.left;
        }
        else {
          current.left = new Node(value);
          break;
        }
      }
      else {
        //go right

        if (current.right) {
          current = current.right;
        }
        else {
          current.right = new Node(value);
          break;
        }
      }
    }
  }
}

class Node {
  constructor(value, left=null, right=null) {
    this.value = value;
    this.left = left;
    this.right = right;
  }
}


//map internal
const myMap = (array, fn) => {
  const answer = [];
  for (let i = 0; i < array.length; i++) {
    answer.push(fn(array[i]));
  }
  return answer;
};

//reduce internal
const myReduce = (list, fn, seed) => {
  let answer = seed;
  for (let i = 0; i < list.length; i++) {
    answer = fn(answer, list[i]);
  }
  return answer;
};

//filter internal
// ex. const filterOutOdds = nums => nums.filter(num => num % 2 === 0);
const myFilter = (list, fn) => {
  const answer = [];
  for (let i = 0; i < list.length; i++) {
    if (fn(list[i])) {
      answer.push(list[i]);
    }
  }
  return answer;
}
