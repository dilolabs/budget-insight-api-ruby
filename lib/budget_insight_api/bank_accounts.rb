# frozen_string_literal: true

module BudgetInsightAPI
  class BankAccounts
    def self.new(client, user_token, user_id, connection_id)
      client.connection.get("/users/#{user_id}/connections/#{connection_id}/accounts") do |request|
        request.headers[:authorization] = "Bearer #{user_token}"
      end
    end
  end
end

