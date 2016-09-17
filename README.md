# Houston::Twilio

Allows Houston to receive texts via SMS and respond


## Installation

In your `Gemfile`, add:

    gem "houston-twilio"

And in `config/main.rb`, add:

```ruby
use :twilio do
  sid ENV["HOUSTON_TWILIO_SID"]
  token ENV["HOUSTON_TWILIO_TOKEN"]
  number ENV["HOUSTON_TWILIO_NUMBER"]
end
```

And then execute:

    $ bundle


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
