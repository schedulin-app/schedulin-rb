# frozen_string_literal: true

module Schedulin
  module Profiles
    module Types
      class RetrieveProfilesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
