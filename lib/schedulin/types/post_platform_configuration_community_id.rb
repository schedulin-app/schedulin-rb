# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationCommunityID < Internal::Types::Model
      field :caption, -> { String }, optional: true, nullable: false

      field :media, -> { Internal::Types::Array[Schedulin::Types::PostPlatformConfigurationCommunityIDMediaItem] }, optional: true, nullable: false

      field :poll, -> { Schedulin::Types::PostPlatformConfigurationCommunityIDPoll }, optional: true, nullable: false

      field :community_id, -> { String }, optional: true, nullable: false

      field :community_name, -> { String }, optional: true, nullable: false

      field :quote_tweet_id, -> { String }, optional: true, nullable: false

      field :in_reply_to_tweet_id, -> { String }, optional: true, nullable: false

      field :geo, -> { Schedulin::Types::PostPlatformConfigurationCommunityIDGeo }, optional: true, nullable: false

      field :reply_settings, -> { Schedulin::Types::PostPlatformConfigurationCommunityIDReplySettings }, optional: true, nullable: false
    end
  end
end
