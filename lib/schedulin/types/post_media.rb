# frozen_string_literal: true

module Schedulin
  module Types
    class PostMedia < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :mime_type, -> { String }, optional: false, nullable: false, api_name: "mimeType"

      field :width, -> { Integer }, optional: false, nullable: true

      field :height, -> { Integer }, optional: false, nullable: true

      field :duration, -> { Integer }, optional: false, nullable: true

      field :size, -> { Integer }, optional: false, nullable: true

      field :alt, -> { String }, optional: false, nullable: true

      field :thumbnail_url, -> { String }, optional: false, nullable: true, api_name: "thumbnailUrl"

      field :tags, -> { Internal::Types::Array[Schedulin::Types::PostMediaTagsItem] }, optional: true, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
