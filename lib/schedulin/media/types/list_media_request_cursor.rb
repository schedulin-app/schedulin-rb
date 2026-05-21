# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class ListMediaRequestCursor < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :updated_at, -> { Schedulin::Media::Types::ListMediaRequestCursorUpdatedAt }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
