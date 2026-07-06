# frozen_string_literal: true

module Schedulin
  module Platforms
    module Types
      class ListPlatformsResponseDataItemPlatformConfiguration < Internal::Types::Model
        field :required, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :validated, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :schema, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
