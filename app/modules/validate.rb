module Validate
  def self.empty?(argument, name)
    raise ArgumentError, "#{name} is empty" if argument.to_s.empty?
  end

  def self.string?(argument, name)
    raise TypeError, "#{name} is not string" unless argument.is_a? String
  end

  def self.number?(argument, name)
    raise TypeError, "#{name} is not number" unless argument.is_a? Numeric
  end

  def self.positive?(argument, name)
    raise ArgumentError, "#{name} is negative" unless argument.positive?
  end

  def self.instanse_of?(argument, name, instance_class)
    raise TypeError, "#{name} is not instance of #{instance_class}" unless argument.is_a? instance_class
  end
end
