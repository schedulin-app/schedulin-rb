# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationExternal < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationExternalMediaItem] }, optional: true, nullable: false

        field :alt_text, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :langs, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :external, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationExternalExternal }, optional: true, nullable: false

        field :quote_post_uri, -> { String }, optional: true, nullable: false

        field :reply_to, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationExternalReplyTo }, optional: true, nullable: false

        field :threadgate, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationExternalThreadgate }, optional: true, nullable: false

        field :postgate, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationExternalPostgate }, optional: true, nullable: false

        field :labels, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
