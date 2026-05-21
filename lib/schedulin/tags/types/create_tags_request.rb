# frozen_string_literal: true

module Schedulin
  module Tags
    module Types
      class CreateTagsRequest < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :color, -> { String }, optional: false, nullable: false
      end
    end
  end
end
