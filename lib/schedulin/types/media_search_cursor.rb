# frozen_string_literal: true

module Schedulin
  module Types
    class MediaSearchCursor < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :updated_at, -> { Schedulin::Types::MediaSearchCursorUpdatedAt }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
