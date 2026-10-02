# frozen_string_literal: true

module Schedulin
  module Webhooks
    module Types
      class TestWebhooksResponse < Internal::Types::Model
        field :delivery_id, -> { String }, optional: false, nullable: false, api_name: "deliveryId"
      end
    end
  end
end
