# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class ListMediaResponse < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Schedulin::Types::Media] }, optional: false, nullable: false

        field :page, -> { Integer }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: false

        field :total_pages, -> { Integer }, optional: false, nullable: false, api_name: "totalPages"
      end
    end
  end
end
