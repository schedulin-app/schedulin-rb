# frozen_string_literal: true

module Schedulin
  module Ai
    module Types
      class GenerateImageAiRequest < Internal::Types::Model
        field :prompt, -> { String }, optional: false, nullable: false

        field :model_key, -> { Schedulin::Ai::Types::GenerateImageAiRequestModelKey }, optional: true, nullable: false, api_name: "modelKey"

        field :width, -> { Integer }, optional: true, nullable: false

        field :height, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
