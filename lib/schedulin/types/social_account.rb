# frozen_string_literal: true

module Schedulin
  module Types
    class SocialAccount < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::SocialPlatform }, optional: false, nullable: false

      field :image_url, -> { String }, optional: false, nullable: true, api_name: "imageUrl"

      field :image_processing_status, -> { Schedulin::Types::ImageProcessingStatus }, optional: false, nullable: false, api_name: "imageProcessingStatus"

      field :username, -> { String }, optional: false, nullable: true

      field :status, -> { Schedulin::Types::SocialAccountStatus }, optional: false, nullable: false

      field :disconnected_reason, -> { Schedulin::Types::SocialAccountDisconnectedReason }, optional: false, nullable: true, api_name: "disconnectedReason"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :refresh_token_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "refreshTokenValid"
    end
  end
end
