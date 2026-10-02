# frozen_string_literal: true

module Schedulin
  module Ai
    module Types
      class GenerateImageAiResponse < Internal::Types::Model
        field :generation_id, -> { String }, optional: false, nullable: false, api_name: "generationId"
      end
    end
  end
end
