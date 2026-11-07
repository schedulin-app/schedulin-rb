# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class AddToMediaLibraryUgcResponse < Internal::Types::Model
        field :media_id, -> { String }, optional: false, nullable: false, api_name: "mediaId"

        field :url, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: true

        field :mime_type, -> { String }, optional: false, nullable: true, api_name: "mimeType"
      end
    end
  end
end
