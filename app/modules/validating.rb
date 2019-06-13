module Validating
  def valid_string?(string = '')
    raise Exceptions::InvalidInput, 'Should not be empty' if string.to_s.empty?
    raise Exceptions::InvalidInput, 'Should be a string' unless string.is_a? String
  end

  def valid_number?(number = '')
    raise Exceptions::InvalidInput, 'Should not be empty' if number.to_s.empty?
    raise Exceptions::InvalidInput, 'Should be a number' unless number.is_a? Numeric
    raise Exceptions::InvalidInput, 'Should be positive' unless number.positive?
  end

  def valid_author?(subject = '')
    raise Exceptions::InvalidInput, 'Should not be empty' if subject.to_s.empty?
    raise Exceptions::InvalidInstance, 'Should be an instance of Author class' unless subject.is_a? Author
  end

  def valid_book?(subject = '')
    raise Exceptions::InvalidInput, 'Should not be empty' if subject.to_s.empty?
    raise Exceptions::InvalidInstance, 'Should be an instance of Book class' unless subject.is_a? Book
  end

  def valid_reader?(subject = '')
    raise Exceptions::InvalidInput, 'Should not be empty' if subject.to_s.empty?
    raise Exceptions::InvalidInstance, 'Should be an instance of Reader class' unless subject.is_a? Reader
  end
end
