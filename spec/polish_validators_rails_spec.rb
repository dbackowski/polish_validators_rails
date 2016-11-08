require 'spec_helper'

describe 'PolishValidatorRails' do
  before(:all) do
    class Dummy
      include ActiveModel::Validations

      attr_accessor :nip, :pesel, :regon, :iban

      validates :nip, nip: true
      validates :pesel, pesel: true
      validates :regon, regon: true
      validates :iban, iban: true
    end
  end

  describe 'any class that include ActiveModel::Validations' do
    it "has :iban validator" do
      expect(Dummy.validators.map(&:class).include?(IbanValidator)).to be_truthy
    end

    it "has :nip validator" do
      expect(Dummy.validators.map(&:class).include?(NipValidator)).to be_truthy
    end

    it "has :pesel validator" do
      expect(Dummy.validators.map(&:class).include?(PeselValidator)).to be_truthy
    end

    it "has :regon validator" do
      expect(Dummy.validators.map(&:class).include?(RegonValidator)).to be_truthy
    end
  end
end