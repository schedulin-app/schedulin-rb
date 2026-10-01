# frozen_string_literal: true

module Schedulin
  module Webhooks
    module Types
      class TestWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
