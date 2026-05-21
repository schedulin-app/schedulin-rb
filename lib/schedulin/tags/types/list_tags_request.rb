# frozen_string_literal: true

module Schedulin
  module Tags
    module Types
      class ListTagsRequest < Internal::Types::Model
        field :q, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
