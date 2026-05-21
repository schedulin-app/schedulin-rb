# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationCommunityID < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationCommunityIDMediaItem] }, optional: true, nullable: false

        field :poll, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationCommunityIDPoll }, optional: true, nullable: false

        field :community_id, -> { String }, optional: true, nullable: false

        field :community_name, -> { String }, optional: true, nullable: false

        field :quote_tweet_id, -> { String }, optional: true, nullable: false

        field :in_reply_to_tweet_id, -> { String }, optional: true, nullable: false

        field :geo, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationCommunityIDGeo }, optional: true, nullable: false

        field :reply_settings, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationCommunityIDReplySettings }, optional: true, nullable: false
      end
    end
  end
end
