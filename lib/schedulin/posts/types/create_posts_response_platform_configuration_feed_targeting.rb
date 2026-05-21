# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationFeedTargeting < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationFeedTargetingMediaItem] }, optional: true, nullable: false

        field :placement, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationFeedTargetingPlacement }, optional: true, nullable: false

        field :location, -> { String }, optional: true, nullable: false

        field :collaborators, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :first_comment, -> { String }, optional: true, nullable: false

        field :tagged_users, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :scheduled_publish_time, -> { Integer }, optional: true, nullable: false

        field :feed_targeting, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :targeting, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
