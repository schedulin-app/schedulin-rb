# frozen_string_literal: true

module Schedulin
  module Types
    # Cover image for the post's first video (an image URL or stored library image), used when that video has no
    # `media[].thumbnail_url`. Honoured by YouTube (custom thumbnail) and Instagram (Reel cover). TikTok can't take a
    # cover image through its API (the post publishes with a warning); use `media[].thumbnail_timestamp_ms` to pick a
    # frame instead.
    class PostCreateThumbnail < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :tags, -> { Internal::Types::Array[Schedulin::Types::PostCreateThumbnailTagsItem] }, optional: true, nullable: false

      field :alt, -> { String }, optional: true, nullable: false

      field :skip_processing, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :mime_type, -> { String }, optional: true, nullable: false, api_name: "mimeType"

      field :width, -> { Integer }, optional: true, nullable: false

      field :height, -> { Integer }, optional: true, nullable: false

      field :size, -> { Integer }, optional: true, nullable: false

      field :duration, -> { Integer }, optional: true, nullable: false

      field :thumbnail_url, -> { String }, optional: true, nullable: false

      field :thumbnail_timestamp_ms, -> { Integer }, optional: true, nullable: false

      field :caption, -> { String }, optional: true, nullable: false
    end
  end
end
