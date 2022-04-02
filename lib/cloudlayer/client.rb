# frozen_string_literal: true

require "faraday"
require "dry/inflector"

module Cloudlayer
  class Client
    BASE_URL = "https://api.cloudlayer.io"

    def self.underscore
      @underscore ||= Dry::Inflector.new.method(:underscore)
    end

    def self.handle_response(response)
      response.body.transform_keys { |k| underscore.call(k).to_sym }
    end

    def initialize(api_key:, adapter: Faraday.default_adapter)
      @api_key = api_key
      @adapter = adapter
    end

    def connection
      @connection ||= Faraday.new do |conn|
        conn.headers = {"x-api-key" => api_key}
        conn.url_prefix = BASE_URL
        conn.request(:json)
        conn.response(:json, content_type: "application/json")
        conn.adapter(adapter)
      end
    end

    def test
      response = connection.get("/v1/getStatus")

      self.class.handle_response(response)
    end

    def account
      response = connection.get("/v1/account")

      AccountInstance.new(self.class.handle_response(response))
    end

    private

    attr_reader :api_key, :adapter
  end
end
