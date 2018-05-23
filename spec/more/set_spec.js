describe("a set", function() {
  var set;

  beforeEach(function() {
    set = new Set(["y", "z"]);
  });

  it("has an array of data", function() {
    expect(set.data).toEqual(["y", "z"]);
  });

  it("returns false if does not include the element", function() {
    expect(set.includes("x")).toEqual(false);
  });

  it("returns true if it includes the element", function() {
    expect(set.includes("y")).toEqual(true);
  });

  it("can add an element to itself", function() {
    set.add("m")
    expect(set.data).toEqual(["y", "z", "m"]);
  });

  it("can remove an element", function() {
    set.remove("z")
    expect(set.data).toEqual(["y"]);
  });
});
