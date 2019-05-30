# Happy Number

> A happy number is defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits in base-ten, and repeat the process until the number either equals 1 (where it will stay), or it loops endlessly in a cycle that does not include 1. Those numbers for which this process ends in 1 are happy numbers, while those that do not end in 1 are unhappy numbers (or sad numbers). --[*Wikipedia*](https://en.wikipedia.org/wiki/Happy_number)

This shard is a Crystal implementation of the happy number sequence.

## Installation

1. Add the dependency to your `shard.yml`:

```yaml
dependencies:
  happy_number:
    github: grottopress/happy_number.cr
```

2. Run `shards install`

## Usage

```crystal
require "happy_number"

# Check if a given number is happy
7_u8.happy? # => true

# Check if a given number is unhappy
1234_u16.unhappy? # => true
# Same as `1234_u16.sad?`

# Get all happy numbers in a given range
(1_u8..30_u8).happy # => [1, 7, 10, 13, 19, 23, 28]

# Get all unhappy numbers in a given range
(1_u8..15_u8).unhappy # => [2, 3, 4, 5, 6, 8, 9, 11, 12, 14, 15]
```

## Security

Kindly report suspected security vulnerabilities in private, via contact details outlined in this repository's `.security.txt` file.

## Contributing

1. Fork it (<https://github.com/grottopress/happy_number.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [@GrottoPress](https://github.com/grottopress) (creator, maintainer)
- [@akadusei](https://github.com/akadusei)
