class ArrayList
  attr_accessor :length, :data

  def initialize
    @length = 0
    @data = {}
  end

  def push(value)
    self.data[self.length] = value
    self.length += 1
  end

  def pop
    self.delete(self.length-1)
    #last_val = self.data[self.length-1]
    #self.data[self.length-1].delete
    #self.length -= 1
    #last_val
  end

  def get(index)
    self.data[index]
  end

  def delete(index)
    return_val = self.data[index]
    self._collapse_to(index);
    return_val
  end

  #collapse can be done in delete
  def _collapse_to(index)
    i = index
    while i < self.length
      self.data[i] = self.data[i+1]
      i += 1
    end
    self.data.delete(self.data[self.length-1])
    self.length -= 1
  end

end

al = ArrayList.new
p al.push(5)
p al.push(8)
p al
p al.pop
p al
