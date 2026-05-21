# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationAllowEmbedding < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowEmbeddingMediaItem] }, optional: true, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :category_id, -> { String }, optional: false, nullable: false, api_name: "categoryId"

        field :visibility, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowEmbeddingVisibility }, optional: false, nullable: false

        field :license, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowEmbeddingLicense }, optional: true, nullable: false

        field :notify_subscribers, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "notifySubscribers"

        field :allow_embedding, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowEmbedding"

        field :made_for_kids, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "madeForKids"

        field :tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :default_language, -> { String }, optional: true, nullable: false, api_name: "defaultLanguage"

        field :default_audio_language, -> { String }, optional: true, nullable: false, api_name: "defaultAudioLanguage"

        field :recording_date, -> { String }, optional: true, nullable: false, api_name: "recordingDate"

        field :publish_at, -> { String }, optional: true, nullable: false, api_name: "publishAt"

        field :contains_synthetic_media, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "containsSyntheticMedia"

        field :public_stats_viewable, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "publicStatsViewable"
      end
    end
  end
end
