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
  get(index) {

  }
  delete(index) {

  }
}

class Node {
  constructor(value) {
    this.value = value;
    this.next = null;
  }
}
