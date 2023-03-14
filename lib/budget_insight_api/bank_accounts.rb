# frozen_string_literal: true

module BudgetInsightAPI
  class BankAccounts
    def self.list(client, user_token, user_id, connection_id)
      client.connection.get("/2.0/users/#{user_id}/connections/#{connection_id}/accounts") do |request|
        request.headers[:authorization] = "Bearer #{user_token}"
      end
    end

    def self.get(client, user_token, user_id, connection_id, account_id)
      client.connection.get("/2.0/users/#{user_id}/connections/#{connection_id}/accounts/#{account_id}") do |request|
        request.headers[:authorization] = "Bearer #{user_token}"
      end
    end
  end
end

