# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class RetrieveMediaRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
