# ruby-luhn

A lightweight implementation of the Luhn algorithm.

[![Gem Version](https://badge.fury.io/rb/ruby-luhn.svg)](https://badge.fury.io/rb/ruby-luhn)

## Installation

This gem is available in RubyGems. To install add the following to your Gemfile:

```rb
gem 'ruby-luhn'
```

And run `bundle install`.

## Usage

To generate the checksum for a number you can simply do

```rb
Luhn.generate('12345')
```

It uses base 10 by default, but you can change that easily:

```rb
Luhn.generate('123ABC', base: 16)
```

## License

The MIT License (MIT)

Copyright (c) 2020 Jorge Leites
