require "dry-struct"
require "dry/inflector"

module Cloudlayer
  include Cloudlayer::Types

  class AccountInstance < ::Dry::Struct
    attribute :calls, Types::Strict::Integer
    attribute :subscription, Types::Strict::String
    attribute :bytes_total, Types::Strict::Integer
    attribute :bytes_limit, Types::Strict::Integer
    attribute :compute_time_total, Types::Strict::Integer
    attribute :compute_time_limit, Types::Strict::Integer
    attribute :sub_type, Types::Strict::String
    attribute :sub_active, Types::Strict::Bool
    attribute :uid, Types::Strict::String

    attribute? :credit, Types::Strict::Integer
    attribute? :success_jobs, Types::Strict::Integer
    attribute? :error_jobs, Types::Strict::Integer
    attribute? :total_jobs, Types::Strict::Integer
  end
end
