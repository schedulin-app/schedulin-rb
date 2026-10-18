# frozen_string_literal: true

module Schedulin
  module Types
    class ClientProfileSocialAccountsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::ClientProfileSocialAccountsItemPlatform }, optional: false, nullable: false

      field :status, -> { Schedulin::Types::ClientProfileSocialAccountsItemStatus }, optional: false, nullable: false

      field :disconnected_reason, -> { Schedulin::Types::SocialAccountDisconnectedReason }, optional: false, nullable: true, api_name: "disconnectedReason"

      field :username, -> { String }, optional: false, nullable: true

      field :display_name, -> { String }, optional: false, nullable: true, api_name: "displayName"

      field :handle, -> { String }, optional: false, nullable: true

      field :profile_image_url, -> { String }, optional: false, nullable: true, api_name: "profileImageUrl"

      field :refresh_token_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "refreshTokenValid"

      field :analytics_disabled_at, -> { String }, optional: false, nullable: true, api_name: "analyticsDisabledAt"

      field :webhook_subscription_failed_at, -> { String }, optional: false, nullable: true, api_name: "webhookSubscriptionFailedAt"

      field :profile_id, -> { String }, optional: false, nullable: true, api_name: "profileId"

      field :connected_via, -> { Schedulin::Types::ClientProfileSocialAccountsItemConnectedVia }, optional: false, nullable: true, api_name: "connectedVia"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
