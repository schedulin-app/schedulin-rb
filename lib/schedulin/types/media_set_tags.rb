# frozen_string_literal: true

module Schedulin
  module Types
    class MediaSetTags < Internal::Types::Model
      field :media_id, -> { String }, optional: false, nullable: false, api_name: "mediaId"

      field :tag_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "tagIds"
    end
  end
end
