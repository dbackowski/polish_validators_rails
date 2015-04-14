# PolishValidatorsRails [![Build Status](https://travis-ci.org/dbackowski/polish_validators_rails.svg?branch=master)](https://travis-ci.org/dbackowski/polish_validators_rails)

Rails validators for polish numbers: PESEL, NIP, REGON

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'polish_validators_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install polish_validators_rails

## Usage

```ruby
    class User
      include ActiveModel::Validations

      attr_accessor :nip, :pesel, :regon

      validates :nip, nip: true
      validates :pesel, pesel: true
      validates :regon, regon: true
    end

    user = User.new
    user.nip = 1234563218
    user.pesel = 44051401359
    user.regon = 12345678512347
    user.valid?
    => true
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
