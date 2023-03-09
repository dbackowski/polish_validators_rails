require 'polish_validators_rails/version'
require 'polish_validators'
require 'active_record'

class IbanValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::PolishValidators::IbanValidator.new(value)
    record.errors.add(attribute, :invalid, **options) unless validator.valid?
  end
end

class NipValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::PolishValidators::NipValidator.new(value)
    record.errors.add(attribute, :invalid, **options) unless validator.valid?
  end
end

class PeselValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::PolishValidators::PeselValidator.new(value)
    record.errors.add(attribute, :invalid, **options) unless validator.valid?
  end
end

class RegonValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    validator = ::PolishValidators::RegonValidator.new(value)
    record.errors.add(attribute, :invalid, **options) unless validator.valid?
  end
end
