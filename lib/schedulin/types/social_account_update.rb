# frozen_string_literal: true

module Schedulin
  module Types
    class SocialAccountUpdate < Internal::Types::Model
      field :platform, -> { Schedulin::Types::SocialAccountUpdatePlatform }, optional: true, nullable: false

      field :access_token, -> { String }, optional: true, nullable: false, api_name: "accessToken"

      field :secret_access_token, -> { String }, optional: true, nullable: false, api_name: "secretAccessToken"

      field :refresh_token, -> { String }, optional: true, nullable: false, api_name: "refreshToken"

      field :refresh_token_valid, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "refreshTokenValid"

      field :token_expires_at, -> { String }, optional: true, nullable: false, api_name: "tokenExpiresAt"

      field :image_url, -> { String }, optional: true, nullable: false, api_name: "imageUrl"

      field :image_processing_status, -> { Schedulin::Types::SocialAccountUpdateImageProcessingStatus }, optional: true, nullable: false, api_name: "imageProcessingStatus"

      field :platform_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "platformData"

      field :last_refresh_at, -> { String }, optional: true, nullable: false, api_name: "lastRefreshAt"

      field :status, -> { Schedulin::Types::SocialAccountUpdateStatus }, optional: true, nullable: false

      field :id, -> { String }, optional: false, nullable: false
    end
  end
end
