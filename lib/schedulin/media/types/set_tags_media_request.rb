# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class SetTagsMediaRequest < Internal::Types::Model
        field :media_id, -> { String }, optional: false, nullable: false, api_name: "mediaId"

        field :tag_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "tagIds"
      end
    end
  end
end
