# frozen_string_literal: true

require_relative '../dependencies/dependencies.rb'

# #
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

  def self.is_instanse_of?(argument, name, instance_class)
    raise TypeError, "#{name} is not instance of #{instance_class}" unless argument.is_a? instance_class
  end
end

# puts Validate.empty?(1, 'name')
# puts Validate.string?(1, 'name')
# puts Validate.number?(1, 'name')
# puts Validate.positive?(-1, 'name')
# puts Validate.positive?(-1, 'name')
# author = Author.new('asdf')

# puts Validate.is_instanse_of_author?(author, 'name')