# frozen_string_literal: true

module BudgetInsightAPI
  class BankTransactions
    def self.list(client, user_token, user_id, account_id, limit)
      client.connection.get("/users/#{user_id}/accounts/#{account_id}/transactions?limit=#{limit}") do |request|
        request.headers[:authorization] = "Bearer #{user_token}"
      end
    end
  end
end

