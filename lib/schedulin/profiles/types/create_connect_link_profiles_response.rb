# frozen_string_literal: true

module Schedulin
  module Profiles
    module Types
      class CreateConnectLinkProfilesResponse < Internal::Types::Model
        field :url, -> { String }, optional: false, nullable: false

        field :expires_at, -> { String }, optional: false, nullable: false, api_name: "expiresAt"
      end
    end
  end
end
