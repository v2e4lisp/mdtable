# Mdtable

convert 2D array to markdown table

## Installation

Add this line to your application's Gemfile:

    gem 'mdtable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mdtable

## Usage

```ruby

require 'mdtable'

puts MDTable.convert [['col1', 'col2', 'col3'], [1,2,3]]

# col1 | col2 | col3
# ---- | ---- | ----
# 1    | 2    | 3

```

## Contributing

1. Fork it ( https://github.com/v2e4lisp/mdtable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
