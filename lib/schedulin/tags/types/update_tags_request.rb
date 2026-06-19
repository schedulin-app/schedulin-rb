# frozen_string_literal: true

module Schedulin
  module Tags
    module Types
      class UpdateTagsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :color, -> { String }, optional: true, nullable: false
      end
    end
  end
end
