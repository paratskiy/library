module Validating
  def valid_string?(*arguments)
    arguments.each do |argument|
      raise Exceptions::InvalidInput, 'Should not be empty' if argument.to_s.empty?
      raise Exceptions::InvalidInput, 'Should be a string' unless argument.is_a? String
    end
  end

  def valid_number?(number = '')
    raise Exceptions::InvalidInput, 'Should not be empty' if number.to_s.empty?
    raise Exceptions::InvalidInput, 'Should be a number' unless number.is_a? Numeric
    raise Exceptions::InvalidInput, 'Should be positive' unless number.positive?
  end

  def valid_instance?(klass = '', subject = '')
    raise Exceptions::InvalidInput, 'Should not be empty' if subject.to_s.empty?
    raise Exceptions::InvalidInstance, "Should be an instance of #{klass} class" unless subject.is_a? klass
  end

  def found_entity?(db, entity = '')
    raise Exceptions::InvalidInput, 'Should not be empty' if entity.to_s.empty?
    raise Exceptions::UndefinedEntity, "Undefined key #{entity}" unless db.key?(entity)
  end
end
