# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ListSocialAccountsResponseDataItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :platform, -> { Schedulin::SocialAccounts::Types::ListSocialAccountsResponseDataItemPlatform }, optional: false, nullable: false

        field :status, -> { Schedulin::SocialAccounts::Types::ListSocialAccountsResponseDataItemStatus }, optional: false, nullable: false

        field :disconnected_reason, -> { Schedulin::Types::SocialAccountDisconnectedReason }, optional: false, nullable: true, api_name: "disconnectedReason"

        field :username, -> { String }, optional: false, nullable: true

        field :display_name, -> { String }, optional: false, nullable: true, api_name: "displayName"

        field :custom_name, -> { String }, optional: false, nullable: true, api_name: "customName"

        field :handle, -> { String }, optional: false, nullable: true

        field :profile_image_url, -> { String }, optional: false, nullable: true, api_name: "profileImageUrl"

        field :refresh_token_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "refreshTokenValid"

        field :analytics_disabled_at, -> { String }, optional: false, nullable: true, api_name: "analyticsDisabledAt"

        field :webhook_subscription_failed_at, -> { String }, optional: false, nullable: true, api_name: "webhookSubscriptionFailedAt"

        field :profile_id, -> { String }, optional: false, nullable: true, api_name: "profileId"

        field :connected_via, -> { Schedulin::SocialAccounts::Types::ListSocialAccountsResponseDataItemConnectedVia }, optional: false, nullable: true, api_name: "connectedVia"

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
