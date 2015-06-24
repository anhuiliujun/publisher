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
  You should edit the config by yourself.

2. Add `include_publisher` to your application.html.erb to load js file.
  ```ruby
  <%= include_publisher %>
  ```

3. Then in the appliction.js file, do as follows:
  ```javascript
  $(function(){
    if(faye_url){
      var faye = new Faye.Client(faye_url);
      faye.subscribe(channel, function(data){
        console.log(data);
      })
    }
  })
  ```

4. Call `Publisher.publish` when you want to publish message.
  ```ruby
  Publisher.publish(channel, message)
  ```

  This will publish message to channel.

5. You must want to take a look at faye. ( http://faye.jcoglan.com )

## Contributing

1. Fork it ( https://github.com/anhuiliujun/publisher/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
