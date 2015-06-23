# Publisher

Publish message to faye by http.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'publisher'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install publisher

## Usage

1. rails g publisher:install
2. Call `Publisher.publish` when you want to publish message.
  ```ruby
  Publisher.publish(channel, message)
  ```

  This will publish message to channel.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/publisher/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
