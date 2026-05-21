# frozen_string_literal: true

module Schedulin
  module Types
    class SocialAccountPublic < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::SocialPlatform }, optional: false, nullable: false

      field :username, -> { String }, optional: false, nullable: true

      field :user_id, -> { String }, optional: false, nullable: false

      field :profile_photo_url, -> { String }, optional: false, nullable: true

      field :status, -> { Schedulin::Types::SocialAccountPublicStatus }, optional: false, nullable: false

      field :external_id, -> { String }, optional: false, nullable: true
    end
  end
end
