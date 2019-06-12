module Validate
  def empty?(argument, name)
    raise ArgumentError, "#{name} is empty" if argument.to_s.empty?
  end

  def string?(argument, name)
    raise TypeError, "#{name} is not string" unless argument.is_a? String
  end

  def number?(argument, name)
    raise TypeError, "#{name} is not number" unless argument.is_a? Numeric
  end

  def positive?(argument, name)
    raise ArgumentError, "#{name} is negative" unless argument.positive?
  end

  def instance_of?(argument, name, instance_class)
    raise TypeError, "#{name} is not instance of #{instance_class}" unless argument.is_a? instance_class
  end
end
