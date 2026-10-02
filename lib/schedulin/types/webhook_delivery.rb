# frozen_string_literal: true

module Schedulin
  module Types
    class WebhookDelivery < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :endpoint_id, -> { String }, optional: false, nullable: false, api_name: "endpointId"

      field :event, -> { String }, optional: false, nullable: false

      field :payload, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :status, -> { Schedulin::Types::WebhookDeliveryStatus }, optional: false, nullable: false

      field :attempts, -> { Integer }, optional: false, nullable: false

      field :response_status, -> { Integer }, optional: false, nullable: true, api_name: "responseStatus"

      field :last_error, -> { String }, optional: false, nullable: true, api_name: "lastError"

      field :delivered_at, -> { String }, optional: false, nullable: true, api_name: "deliveredAt"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
    end
  end
end
