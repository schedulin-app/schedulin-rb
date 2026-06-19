# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class CountByTagMediaResponseDataItem < Internal::Types::Model
        field :tag_id, -> { String }, optional: false, nullable: false, api_name: "tagId"

        field :count, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
