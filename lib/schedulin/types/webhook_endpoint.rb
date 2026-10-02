# frozen_string_literal: true

module Schedulin
  module Types
    class WebhookEndpoint < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :secret, -> { String }, optional: false, nullable: false

      field :events, -> { Internal::Types::Array[Schedulin::Types::WebhookEndpointEventsItem] }, optional: false, nullable: false

      field :description, -> { String }, optional: false, nullable: true

      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :consecutive_failures, -> { Integer }, optional: false, nullable: false, api_name: "consecutiveFailures"

      field :last_success_at, -> { String }, optional: false, nullable: true, api_name: "lastSuccessAt"

      field :last_failure_at, -> { String }, optional: false, nullable: true, api_name: "lastFailureAt"

      field :disabled_at, -> { String }, optional: false, nullable: true, api_name: "disabledAt"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
