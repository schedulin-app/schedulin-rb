# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationFeedTargeting < Internal::Types::Model
      field :caption, -> { String }, optional: true, nullable: false

      field :media, -> { Internal::Types::Array[Schedulin::Types::PostPlatformConfigurationFeedTargetingMediaItem] }, optional: true, nullable: false

      field :placement, -> { Schedulin::Types::PostPlatformConfigurationFeedTargetingPlacement }, optional: true, nullable: false

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
