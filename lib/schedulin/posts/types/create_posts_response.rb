# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponse < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :external_id, -> { String }, optional: false, nullable: true, api_name: "externalId"

        field :caption, -> { String }, optional: false, nullable: false

        field :status, -> { Schedulin::Types::PostStatus }, optional: false, nullable: false

        field :scheduled_at, -> { String }, optional: false, nullable: true, api_name: "scheduledAt"

        field :platform_configuration, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true, api_name: "platformConfiguration"

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponseMediaItem] }, optional: false, nullable: false

        field :social_accounts, -> { Internal::Types::Array[Schedulin::Types::SocialAccountPublic] }, optional: false, nullable: false, api_name: "socialAccounts"

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
