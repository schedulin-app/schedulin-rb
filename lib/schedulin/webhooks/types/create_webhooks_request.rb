# frozen_string_literal: true

module Schedulin
  module Webhooks
    module Types
      class CreateWebhooksRequest < Internal::Types::Model
        field :url, -> { String }, optional: false, nullable: false

        field :events, -> { Internal::Types::Array[Schedulin::Webhooks::Types::CreateWebhooksRequestEventsItem] }, optional: false, nullable: false

        field :description, -> { String }, optional: true, nullable: false
      end
    end
  end
end
