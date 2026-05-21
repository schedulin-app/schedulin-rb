# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class RefreshProfileSocialAccountsResponse < Internal::Types::Model
        field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :username, -> { String }, optional: true, nullable: false

        field :image_url, -> { String }, optional: true, nullable: false, api_name: "imageUrl"

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
