# frozen_string_literal: true

module Schedulin
  module Platforms
    module Types
      class ListPlatformsResponseDataItem < Internal::Types::Model
        field :platform, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :coming_soon, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "comingSoon"

        field :caption_max_length, -> { Integer }, optional: true, nullable: false, api_name: "captionMaxLength"

        field :media_rules, -> { Schedulin::Platforms::Types::ListPlatformsResponseDataItemMediaRules }, optional: true, nullable: false, api_name: "mediaRules"

        field :platform_configuration, -> { Schedulin::Platforms::Types::ListPlatformsResponseDataItemPlatformConfiguration }, optional: false, nullable: false, api_name: "platformConfiguration"

        field :helper_endpoints, -> { Internal::Types::Array[Schedulin::Platforms::Types::ListPlatformsResponseDataItemHelperEndpointsItem] }, optional: true, nullable: false, api_name: "helperEndpoints"
      end
    end
  end
end
