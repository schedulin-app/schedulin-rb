# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ListSocialAccountsResponseItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :platform, -> { Schedulin::SocialAccounts::Types::ListSocialAccountsResponseItemPlatform }, optional: false, nullable: false

        field :status, -> { Schedulin::SocialAccounts::Types::ListSocialAccountsResponseItemStatus }, optional: false, nullable: false

        field :username, -> { String }, optional: false, nullable: true

        field :display_name, -> { String }, optional: false, nullable: true, api_name: "displayName"

        field :profile_image_url, -> { String }, optional: false, nullable: true, api_name: "profileImageUrl"

        field :refresh_token_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "refreshTokenValid"

        field :analytics_disabled_at, -> { String }, optional: false, nullable: true, api_name: "analyticsDisabledAt"

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
