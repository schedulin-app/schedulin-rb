# frozen_string_literal: true

module Schedulin
  module Webhooks
    module Types
      class UpdateWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :events, -> { Internal::Types::Array[Schedulin::Webhooks::Types::UpdateWebhooksRequestEventsItem] }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
