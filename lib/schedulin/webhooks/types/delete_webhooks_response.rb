# frozen_string_literal: true

module Schedulin
  module Webhooks
    module Types
      class DeleteWebhooksResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
