class FakeHashWrapper

  # write code here

  attr_accessor :hash

  def initialize
    self.hash = {}
  end

  def []=(key, value)
    self.hash[key.to_sym] = value
  end

  def [](key)
    self.hash[key.to_sym]
  end

  def keys
    self.hash.keys.sort.reverse
  end

  def first_letter(letter)
    keys = self.hash.keys.select {|key| key.to_s.split('').first == "a"}
    keys.collect {|key| self.hash[key]}
  end

  def each
    self.hash.each {|key, value| puts value}
  end

end