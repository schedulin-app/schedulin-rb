# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class TiktokCreatorInfoSocialAccountsResponseData < Internal::Types::Model
        field :creator_avatar_url, -> { String }, optional: false, nullable: false

        field :creator_username, -> { String }, optional: false, nullable: false

        field :creator_nickname, -> { String }, optional: false, nullable: false

        field :privacy_level_options, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :comment_disabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :duet_disabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :stitch_disabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :max_video_post_duration_sec, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
