# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class ListPostsResponse < Internal::Types::Model
        field :posts, -> { Internal::Types::Array[Schedulin::Types::PostWithRelations] }, optional: false, nullable: false

        field :page, -> { Integer }, optional: false, nullable: false

        field :total_pages, -> { Integer }, optional: false, nullable: false, api_name: "totalPages"

        field :total, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
