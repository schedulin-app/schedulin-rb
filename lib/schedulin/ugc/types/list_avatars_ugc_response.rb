# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class ListAvatarsUgcResponse < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Schedulin::Ugc::Types::ListAvatarsUgcResponseItemsItem] }, optional: false, nullable: false

        field :total, -> { Integer }, optional: false, nullable: false

        field :page_count, -> { Integer }, optional: false, nullable: false, api_name: "pageCount"
      end
    end
  end
end
