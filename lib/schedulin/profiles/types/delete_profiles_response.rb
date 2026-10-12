# frozen_string_literal: true

module Schedulin
  module Profiles
    module Types
      class DeleteProfilesResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
