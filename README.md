# Billplz

[Billplz-API](https://www.billplz.com/api) Client API for ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'billplz-api'
```

And then execute:

```
$ bundle
```

Or manually install

```
$ gem install billplz-api
```

##Configuration
You need to store your Billplz configuration setting in billplz.rb
```
# config/initializers/billplz.rb
Billplz.configure do |config|
  config.api_key = ENV['API_KEY_BILLPLZ']
  config.api_url = ENV['API_URL_BILLPLZ']
end
```

##Usage
Collection

Create a collection
```
collection = Billplz::Collection.create(title: "Billplz Testing Collection")
```





## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mkhairi/billplz-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
