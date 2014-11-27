# Haller

@sercaneraslan'ın Haller.js'inin Ruby portu

## Installation

Add this line to your application's Gemfile:

```
gem 'haller'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install haller

## Usage

    require 'haller'

    "Can Vural".to_hal('iyelik') # Can Vural'ın
    "Can Vural".to_hal('i') # Can Vural'ı
    "Can Vural".to_hal('e') # Can Vural'a
    "Can Vural".to_hal('de') # Can Vural'da
    "Can Vural".to_hal('den') # Can Vural'dan


## Contributing

1. Fork it ( https://github.com/canvural/Haller.rb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
