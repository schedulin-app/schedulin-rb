# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class DeleteMediaRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
