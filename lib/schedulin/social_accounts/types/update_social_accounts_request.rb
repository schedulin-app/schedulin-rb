# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class UpdateSocialAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :platform, -> { Schedulin::SocialAccounts::Types::UpdateSocialAccountsRequestPlatform }, optional: true, nullable: false

        field :access_token, -> { String }, optional: true, nullable: false, api_name: "accessToken"

        field :secret_access_token, -> { String }, optional: true, nullable: false, api_name: "secretAccessToken"

        field :refresh_token, -> { String }, optional: true, nullable: false, api_name: "refreshToken"

        field :refresh_token_valid, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "refreshTokenValid"

        field :token_expires_at, -> { String }, optional: true, nullable: false, api_name: "tokenExpiresAt"

        field :image_url, -> { String }, optional: true, nullable: false, api_name: "imageUrl"

        field :image_processing_status, -> { Schedulin::SocialAccounts::Types::UpdateSocialAccountsRequestImageProcessingStatus }, optional: true, nullable: false, api_name: "imageProcessingStatus"

        field :platform_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "platformData"

        field :last_refresh_at, -> { String }, optional: true, nullable: false, api_name: "lastRefreshAt"

        field :status, -> { Schedulin::SocialAccounts::Types::UpdateSocialAccountsRequestStatus }, optional: true, nullable: false
      end
    end
  end
end
