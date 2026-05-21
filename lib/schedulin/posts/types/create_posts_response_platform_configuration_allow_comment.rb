# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationAllowComment < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowCommentMediaItem] }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :photo_cover_index, -> { Integer }, optional: true, nullable: false

        field :privacy_status, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowCommentPrivacyStatus }, optional: true, nullable: false

        field :allow_comment, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :allow_duet, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :allow_stitch, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :disclose_your_brand, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :disclose_branded_content, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :disclose_video_content, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :is_ai_generated, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :is_draft, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :auto_add_music, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
