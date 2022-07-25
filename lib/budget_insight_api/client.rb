# frozen_string_literal: true

require "faraday"

require "budget_insight_api/version"
require "budget_insight_api/configuration"
require "budget_insight_api/bank_accounts"
require "budget_insight_api/bank_transactions"

module BudgetInsightAPI
  class Client
    attr_reader :config

    def initialize
      @config = BudgetInsightAPI::Configuration.new
      yield config
    end

    def connection
      @connection ||= build_connection
      return @connection
    end

    def build_connection
      Faraday.new(config.url) do |builder|
        builder.request :json
        builder.response :json
      end
    end
  end
end
