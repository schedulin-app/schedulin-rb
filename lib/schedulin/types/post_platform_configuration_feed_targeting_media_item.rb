# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationFeedTargetingMediaItem < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :thumbnail_url, -> { String }, optional: true, nullable: false

      field :thumbnail_timestamp_ms, -> { Integer }, optional: true, nullable: false

      field :tags, -> { Internal::Types::Array[Schedulin::Types::PostPlatformConfigurationFeedTargetingMediaItemTagsItem] }, optional: true, nullable: false

      field :alt, -> { String }, optional: true, nullable: false

      field :skip_processing, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
