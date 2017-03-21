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

## Configuration
You need to store your Billplz configuration setting in billplz.rb
```ruby
# config/initializers/billplz.rb
Billplz.configure do |config|
  config.api_key = ENV['API_KEY_BILLPLZ']
  config.api_url = ENV['API_URL_BILLPLZ'] 
  #staging api url     https://billplz-staging.herokuapp.com 
  #production api url  https://www.billplz.com/
end
```

## Usage
### Collection

**Find all collection**
```ruby
collections = Billplz::Collection.all
#or
collections = Billplz::Collection.all(page: 1)
```

**Create a collection**
```ruby
collection = Billplz::Collection.create(title: "Billplz Testing Collection")
# {  "id": "inbmmepb", "title": "Billplz Testing Collection"}
#get data from collection 
collection.id # "inbmmepb"
collection.title # "Billplz Testing Collection"
#or 
collection['id'] # "inbmmepb"
collection['title'] # "Billplz Testing Collection"
```

**Deactivate a collection**
```ruby
collection = Billplz::Collection.deactivate(id: "alocpanfu")
```

**Activate a collection**
```ruby
collection = Billplz::Collection.activate(id: "alocpanfu")
```

### Open Collection

**Find all open collection**
```ruby
open_collections = Billplz::OpenCollection.all
#or 
open_collections = Billplz::OpenCollection.all(page: 2)
```

**Create an open collection**
```ruby
open_collection = Billplz::OpenCollection.create(title: "Billplz Testing Collection", description: "Membayar Zakat merupakan kewajiban semua umat Islam bagi yang mampu.", amount: 299)
```

**Find an open collection**
```ruby
open_collection = Billplz::OpenCollection.find(id: 0pp87t_6)
```

### Bill

**Create a bill**
```ruby
bill = Billplz::Bill.create(collection_id: "ajij091j", email: "admin@billplz.com", name:"Admin BillPlz", amount: 200, callback_url: "billplz.com", description: "Shopping Items")
```

**Get a bill**
```ruby
bill = Billplz::Bill.find(id: "arutnv89")
```

**Delete a bill**
```ruby
bill = Billplz::Bill.delete(id: "arutnv89")
```

**Get transactions of a bill**
```ruby
transactions = Billplz::Bill.transactions(bill_id: "arutnv89")
```

### Registration Check

Enter bank account number
```ruby
registration_check = Billplz::Registration.check(account_number: "123465782312")
```


## Contributing

Bug reports and pull requests are welcome .

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
