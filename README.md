# LoggableEvent #
Quickly add logs to any model


## How to use it ##
```ruby
#Add to your Gemfile
gem 'loggable_event'

#Install the generator
rails generate loggable_event:install

#Run migrations
rake db:migrate

#Add logs to your classes
require "loggable_event"
class Order < ActiveRecord::Base
  include LoggableEvent
  
end 

order = Order.first
order.log('Order Received')
order.log('Order Shipped')
order.log('Email sent to customer', 'Email content')

#Get a list of all logs
order.logs

```

