module Validate
  def self.empty?(argument, name)
    raise ArgumentError, "#{name} is empty" if argument.empty?
  end

  def self.string?(argument, name)
    raise TypeError, "#{name} is not string" unless argument.is_a? String
  end

  def self.number?(argument, name)
    raise TypeError, "#{name} is not number" unless argument.is_a? Number
  end

  def self.positive?(argument, name)
    raise ArgumentError, "#{name} is negative" if argument.positive?
  end
end
