# ![](https://raw.github.com/aptible/straptible/master/lib/straptible/rails/templates/public.api/icon-60px.png) Aptible::Billing

[![Gem Version](https://badge.fury.io/rb/aptible-billing.png)](https://rubygems.org/gems/aptible-billing)
[![Build Status](https://travis-ci.org/aptible/aptible-billing-ruby.png?branch=master)](https://travis-ci.org/aptible/aptible-billing-ruby)
[![Dependency Status](https://gemnasium.com/aptible/aptible-billing-ruby.png)](https://gemnasium.com/aptible/aptible-billing-ruby)

Ruby client for [billing.aptible.com](https://billing.aptible.com/). Aptible's billing server is built on top of 
[OAuth 2.0](http://tools.ietf.org/html/rfc6749) and [HAL+JSON](http://tools.ietf.org/html/draft-kelly-json-hal-06), 
and so this client is just a thin layer on top of the [oauth2](https://github.com/intridea/oauth2) 
and [HyperResource](https://github.com/gamache/hyperresource) gems.

## Installation

Add the following line to your application's Gemfile.

    gem 'aptible-billing'

And then run `bundle install`.

## Usage

First, get a token:

```ruby
token = Aptible::Auth::Token.create(email: 'user0@example.com', password: 'password')
```

From here, you can interact with the Billing API however you wish:

```ruby
billing_details = Aptible::Billing::BillingDetail.find(id: '1', token: token)
billing_details.href
# => "http://localhost:4000/billing_details/1"
```

## Configuration

| Parameter | Description | Default |
| --------- | ----------- | --------------- |
| `root_url` | Root URL of the billing server | `ENV['APTIBLE_BILLING_ROOT_URL']` or [https://billing.aptible.com](https://billing.aptible.com) |

To point the client at a different billing server (e.g., during development), 
add the following to your application's initializers (or set the `APTIBLE_BILLING_ROOT_URL` environment variable):

```ruby
Aptible::Billing.configure do |config|
  config.root_url = 'http://some.other.url'
end
```

## Contributing

1. Fork the project.
1. Commit your changes, with specs.
1. Ensure that your code passes specs (`rake spec`) and meets Aptible's Ruby style guide (`rake rubocop`).
1. Create a new pull request on GitHub.

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2015 [Aptible](https://www.aptible.com), and contributors.

[<img src="https://s.gravatar.com/avatar/e5b35690e022507eb4df909d11ad4e23?s=60" style="border-radius: 50%;" alt="@blakepettersson" />](https://github.com/blakepettersson)
