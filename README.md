# BudgetInsightAPI

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/budget_insight_api`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add budget_insight_api

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install budget_insight_api

## Usage

Configure Budget Insight API client:
```
client = BudgetInsightAPI::Client.new do |config|
  config.callback_url = "<YOUR CALLBACK URL>"
  config.client_id = "<YOUR CLIENT ID>"
  config.client_secret = "<YOUR CLIENT SECRET>"
  config.url = "<YOUR URL>"
end
```

[List connections](https://docs.budget-insight.com/reference/connections#list-connections):
```
user_connections = BudgetInsightAPI::UserConnections.list(client, user_token, user_id)
```

[Get a connection](https://docs.budget-insight.com/reference/connections#get-a-connection):
```
user_connection = BudgetInsightAPI::UserConnections.get(client, user_token, user_id, connection_id)
```

[List bank accounts](https://docs.budget-insight.com/reference/bank-accounts#list-bank-accounts):
```
bank_accounts = BudgetInsightAPI::BankAccounts.list(client, user_token, user_id, connection_id)
```

[Get a bank account](https://docs.budget-insight.com/reference/bank-accounts#get-a-bank-account):
```
bank_account = BudgetInsightAPI::BankAccounts.get(client, user_token, user_id, connection_id, account_id)
```

[List transactions](https://docs.budget-insight.com/reference/bank-transactions#list-transactions):
```
bank_transactions = BudgetInsightAPI::BankTransactions.new(client, user_token, user_id, account_id)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/budget_insight_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/budget_insight_api/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BudgetInsightAPI project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/budget_insight_api/blob/master/CODE_OF_CONDUCT.md).
