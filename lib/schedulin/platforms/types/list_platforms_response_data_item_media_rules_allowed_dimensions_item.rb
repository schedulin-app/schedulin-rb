# frozen_string_literal: true

module Schedulin
  module Platforms
    module Types
      class ListPlatformsResponseDataItemMediaRulesAllowedDimensionsItem < Internal::Types::Model
        field :width, -> { Integer }, optional: false, nullable: false

        field :height, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
