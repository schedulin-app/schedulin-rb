# frozen_string_literal: true

module Schedulin
  module Webhooks
    module Types
      class ListDeliveriesWebhooksResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Schedulin::Types::WebhookDelivery] }, optional: false, nullable: false
      end
    end
  end
end
