# frozen_string_literal: true

module Schedulin
  module Profiles
    module Types
      class UpdateProfilesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"
      end
    end
  end
end
