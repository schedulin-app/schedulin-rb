# frozen_string_literal: true

module Schedulin
  module Types
    class SocialAccountUpdate < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Schedulin::Types::SocialAccountUpdateStatus }, optional: true, nullable: false

      field :profile_id, -> { String }, optional: true, nullable: false, api_name: "profileId"
    end
  end
end
