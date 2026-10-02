# frozen_string_literal: true

module Schedulin
  module Types
    class AiGeneration < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :status, -> { Schedulin::Types::AiGenerationStatus }, optional: false, nullable: false

      field :model_key, -> { String }, optional: false, nullable: false, api_name: "modelKey"

      field :prompt, -> { String }, optional: false, nullable: false

      field :image_url, -> { String }, optional: false, nullable: true, api_name: "imageUrl"

      field :result_url, -> { String }, optional: false, nullable: true, api_name: "resultUrl"

      field :width, -> { Integer }, optional: false, nullable: true

      field :height, -> { Integer }, optional: false, nullable: true

      field :duration_seconds, -> { Integer }, optional: false, nullable: true, api_name: "durationSeconds"

      field :cost_micros, -> { Integer }, optional: false, nullable: false, api_name: "costMicros"

      field :estimated_cost_micros, -> { Integer }, optional: false, nullable: false, api_name: "estimatedCostMicros"

      field :error_message, -> { String }, optional: false, nullable: true, api_name: "errorMessage"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
