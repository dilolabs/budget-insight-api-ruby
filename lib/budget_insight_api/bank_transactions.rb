# frozen_string_literal: true

module BudgetInsightAPI
  class BankTransactions
    def self.list(client, user_token, user_id, account_id, limit, cursor = nil)
      client.connection.get("/2.0/users/#{user_id}/accounts/#{account_id}/transactions") do |request|
        request.headers[:authorization] = "Bearer #{user_token}"
        request.params["limit"] = limit
        request.params["cursor"] = cursor if cursor.present?
      end
    end
  end
end

