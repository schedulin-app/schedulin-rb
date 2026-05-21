# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class PostCreatePartsItemMediaItem < Internal::Types::Model
        field :url, -> { String }, optional: false, nullable: false

        field :thumbnail_url, -> { String }, optional: true, nullable: false

        field :thumbnail_timestamp_ms, -> { Integer }, optional: true, nullable: false

        field :tags, -> { Internal::Types::Array[Schedulin::Posts::Types::PostCreatePartsItemMediaItemTagsItem] }, optional: true, nullable: false

        field :alt, -> { String }, optional: true, nullable: false

        field :skip_processing, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :mime_type, -> { String }, optional: true, nullable: false, api_name: "mimeType"

        field :width, -> { Integer }, optional: true, nullable: false

        field :height, -> { Integer }, optional: true, nullable: false

        field :size, -> { Integer }, optional: true, nullable: false

        field :duration, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
