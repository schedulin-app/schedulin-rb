# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationCommunityIDPoll < Internal::Types::Model
        field :duration_minutes, -> { Integer }, optional: false, nullable: false

        field :options, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :reply_settings, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationCommunityIDPollReplySettings }, optional: true, nullable: false
      end
    end
  end
end
