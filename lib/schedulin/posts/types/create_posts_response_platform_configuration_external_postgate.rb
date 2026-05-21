# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationExternalPostgate < Internal::Types::Model
        field :embedding_disabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :detached_embedding_uris, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
