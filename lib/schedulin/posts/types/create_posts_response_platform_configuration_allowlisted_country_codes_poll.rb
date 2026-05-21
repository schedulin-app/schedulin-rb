# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationAllowlistedCountryCodesPoll < Internal::Types::Model
        field :question, -> { String }, optional: true, nullable: false

        field :options, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
