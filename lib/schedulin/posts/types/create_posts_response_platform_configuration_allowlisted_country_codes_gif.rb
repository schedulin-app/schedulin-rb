# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationAllowlistedCountryCodesGif < Internal::Types::Model
        field :gif_id, -> { String }, optional: false, nullable: false

        field :gif_provider, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowlistedCountryCodesGifGifProvider }, optional: true, nullable: false
      end
    end
  end
end
