# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class DeleteMediaResponse < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :deleted, -> { String }, optional: false, nullable: false
      end
    end
  end
end
