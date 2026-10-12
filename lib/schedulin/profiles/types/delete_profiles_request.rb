# frozen_string_literal: true

module Schedulin
  module Profiles
    module Types
      class DeleteProfilesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
