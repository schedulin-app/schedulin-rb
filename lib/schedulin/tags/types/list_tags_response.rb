# frozen_string_literal: true

module Schedulin
  module Tags
    module Types
      class ListTagsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Schedulin::Types::Tag] }, optional: false, nullable: false
      end
    end
  end
end
