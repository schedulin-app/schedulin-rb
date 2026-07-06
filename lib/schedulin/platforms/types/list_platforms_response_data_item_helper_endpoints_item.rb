# frozen_string_literal: true

module Schedulin
  module Platforms
    module Types
      class ListPlatformsResponseDataItemHelperEndpointsItem < Internal::Types::Model
        field :method_, -> { String }, optional: false, nullable: false, api_name: "method"

        field :path, -> { String }, optional: false, nullable: false

        field :description, -> { String }, optional: false, nullable: false
      end
    end
  end
end
