# frozen_string_literal: true

module Schedulin
  module Profiles
    module Types
      class CreateConnectLinkProfilesRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :platforms, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :expires_in_hours, -> { Integer }, optional: true, nullable: false, api_name: "expiresInHours"

        field :redirect_url, -> { String }, optional: true, nullable: false, api_name: "redirectUrl"
      end
    end
  end
end
