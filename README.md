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



## Usage

### Configuration

To use Houston::Twilio, find your Account SID and Auth Token on [Twilio's Console](https://www.twilio.com/console) and copy them to the `use :twilio` block like this. You may also need to create a phone number for Houston.

```ruby
use :twilio do
  sid "AC00000000000000000000000000000000"
  token "00000000000000000000000000000000"
  number "+13145555755"
end
```



### Sending messages

You can send texts from Houston with `Houston::Twilio.send`:

```ruby
Houston::Twilio.send "Hi! I'm Baymax, your personal healthcare companion.", to: "+12018880988"
```



### Listening

```ruby
Houston::Conversations.config do
  listen_for("hurry up") { |e| e.reply "I am not fast" }
end
```

Houston can also respond to any texts that are sent to it. It does this by plugging those messages into Houston's Conversations system. To learn more about setting up—and responding to—listeners, see [Houston::Conversations's README](https://github.com/houston/houston-conversations#houstonconversations).

On [Twilio's site](https://www.twilio.com/console/phone-numbers/incoming), you will need to configure your phone number: Select "Webhook" as the way Twilio should handle incoming messages and enter this URL `https://YOUR_HOUSTON_HOST/twilio/messages`.



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
