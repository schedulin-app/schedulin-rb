# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class ListMediaRequest < Internal::Types::Model
        field :cursor, -> { Schedulin::Media::Types::ListMediaRequestCursor }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :q, -> { String }, optional: true, nullable: false

        field :type, -> { Schedulin::Media::Types::ListMediaRequestType }, optional: true, nullable: false

        field :tag_ids, -> { String }, optional: true, nullable: false, api_name: "tagIds"

        field :tag_mode, -> { Schedulin::Media::Types::ListMediaRequestTagMode }, optional: true, nullable: false, api_name: "tagMode"
      end
    end
  end
end
