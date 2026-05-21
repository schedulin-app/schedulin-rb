# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class ListPostsRequestCursor < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
