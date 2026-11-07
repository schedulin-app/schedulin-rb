# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class CreateVideoUgcResponse < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :status, -> { String }, optional: false, nullable: false

        field :cost_micros, -> { Integer }, optional: false, nullable: false, api_name: "costMicros"

        field :estimated_cost_micros, -> { Integer }, optional: false, nullable: false, api_name: "estimatedCostMicros"

        field :error_message, -> { String }, optional: false, nullable: true, api_name: "errorMessage"

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
