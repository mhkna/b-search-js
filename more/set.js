class Set {
  constructor(data = []) {
    this.data = data;
  }

  includes(element) {
    if (this.getIndex(element, this.data) >= 0) {
      return true;
    }
    return false;
  }

  remove(element) {
    if (this.includes(element)) {
      let indexToRemove = this.getIndex(element, this.data)
      return this.data.splice(indexToRemove, 1)
    }
  }

  add(element) {
    if (!this.includes(element)) {
      this.data.push(element)
    }
  }

  getIndex(element, array) {
    for (let i = 0; i < array.length; i++) {
      if (array[i] === element) {
        console.log(i)
        return i
      }
    }
  }
}

set = new Set(["x", "y"])
set.includes("z")
