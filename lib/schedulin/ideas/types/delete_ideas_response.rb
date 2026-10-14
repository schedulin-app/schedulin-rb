# frozen_string_literal: true

module Schedulin
  module Ideas
    module Types
      class DeleteIdeasResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
