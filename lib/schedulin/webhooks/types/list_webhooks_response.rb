# frozen_string_literal: true

module Schedulin
  module Webhooks
    module Types
      class ListWebhooksResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Schedulin::Types::WebhookEndpoint] }, optional: false, nullable: false
      end
    end
  end
end
