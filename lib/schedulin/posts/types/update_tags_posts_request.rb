# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class UpdateTagsPostsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :tag_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "tagIds"
      end
    end
  end
end
