# frozen_string_literal: true

require_relative "cloudlayer/version"

module Cloudlayer
  autoload :Client, "cloudlayer/client"
  autoload :AccountInstance, "cloudlayer/account_instance"
  autoload :Types, "cloudlayer/types"
end
