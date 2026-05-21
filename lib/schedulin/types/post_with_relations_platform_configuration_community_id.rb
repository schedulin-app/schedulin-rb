# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationCommunityID < Internal::Types::Model
      field :caption, -> { String }, optional: true, nullable: false

      field :media, -> { Internal::Types::Array[Schedulin::Types::PostWithRelationsPlatformConfigurationCommunityIDMediaItem] }, optional: true, nullable: false

      field :poll, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationCommunityIDPoll }, optional: true, nullable: false

      field :community_id, -> { String }, optional: true, nullable: false

      field :community_name, -> { String }, optional: true, nullable: false

      field :quote_tweet_id, -> { String }, optional: true, nullable: false

      field :in_reply_to_tweet_id, -> { String }, optional: true, nullable: false

      field :geo, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationCommunityIDGeo }, optional: true, nullable: false

      field :reply_settings, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationCommunityIDReplySettings }, optional: true, nullable: false
    end
  end
end
