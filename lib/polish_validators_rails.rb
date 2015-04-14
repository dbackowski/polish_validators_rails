require 'polish_validators_rails/version'
require 'polish_validators'
require 'active_record'

class NipValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::PolishValidators::NipValidator.new(value)
    record.errors.add(attribute, @options[:message] || 'Invalid NIP format') unless validator.valid?
  end
end

class PeselValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::PolishValidators::PeselValidator.new(value)
    record.errors.add(attribute, @options[:message] || 'Invalid PESEL format') unless validator.valid?
  end
end

class RegonValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::PolishValidators::RegonValidator.new(value)
    record.errors.add(attribute, @options[:message] || 'Invalid REGON format') unless validator.valid?
  end
end
