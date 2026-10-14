# frozen_string_literal: true

module Schedulin
  module Ideas
    module Types
      class DeleteIdeasRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
