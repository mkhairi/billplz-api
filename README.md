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
**Collection**

**Create a collection**
```
collection = Billplz::Collection.create(title: "Billplz Testing Collection")
# {  "id": "inbmmepb", "title": "Billplz Testing Collection"}
```

**Deactivate a collection**
```
collection = Billplz::Collection.deactivate(id: "alocpanfu")
```

**Activate a collection**
```
collection = Billplz::Collection.activate(id: "alocpanfu")
```

**Open Collection**
**Create an open collection**
```
collection = Billplz::Collection.create_open_collection(title: "Billplz Testing Collection",description: "Maecenas eu placerat ante. Fusce ut neque justo, et aliquet enim. In hac habitasse platea dictumst.", amount: 299)
```



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mkhairi/billplz-api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
