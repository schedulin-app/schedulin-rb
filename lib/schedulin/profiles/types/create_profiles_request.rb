# frozen_string_literal: true

module Schedulin
  module Profiles
    module Types
      class CreateProfilesRequest < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"
      end
    end
  end
end
