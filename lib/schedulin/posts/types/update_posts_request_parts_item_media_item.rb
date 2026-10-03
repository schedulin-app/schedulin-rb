# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class UpdatePostsRequestPartsItemMediaItem < Internal::Types::Model
        field :id, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :mime_type, -> { String }, optional: true, nullable: false, api_name: "mimeType"

        field :width, -> { Integer }, optional: true, nullable: false

        field :height, -> { Integer }, optional: true, nullable: false

        field :size, -> { Integer }, optional: true, nullable: false

        field :duration, -> { Integer }, optional: true, nullable: false

        field :alt, -> { String }, optional: true, nullable: false

        field :tags, -> { Internal::Types::Array[Schedulin::Posts::Types::UpdatePostsRequestPartsItemMediaItemTagsItem] }, optional: true, nullable: false

        field :bucket, -> { String }, optional: true, nullable: false

        field :key, -> { String }, optional: true, nullable: false
      end
    end
  end
end
