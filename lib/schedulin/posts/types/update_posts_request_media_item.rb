# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class UpdatePostsRequestMediaItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :url, -> { String }, optional: false, nullable: false

        field :mime_type, -> { String }, optional: false, nullable: false, api_name: "mimeType"

        field :bucket, -> { String }, optional: false, nullable: false

        field :key, -> { String }, optional: false, nullable: false
      end
    end
  end
end
