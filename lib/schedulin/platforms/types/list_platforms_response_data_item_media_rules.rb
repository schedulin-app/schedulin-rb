# frozen_string_literal: true

module Schedulin
  module Platforms
    module Types
      class ListPlatformsResponseDataItemMediaRules < Internal::Types::Model
        field :min, -> { Integer }, optional: true, nullable: false

        field :max, -> { Integer }, optional: false, nullable: false

        field :allowed_types, -> { Internal::Types::Array[Schedulin::Platforms::Types::ListPlatformsResponseDataItemMediaRulesAllowedTypesItem] }, optional: true, nullable: false, api_name: "allowedTypes"
      end
    end
  end
end
