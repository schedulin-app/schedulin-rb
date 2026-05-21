# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponse < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :external_id, -> { String }, optional: false, nullable: true

        field :caption, -> { String }, optional: false, nullable: false

        field :status, -> { Schedulin::Types::PostStatus }, optional: false, nullable: false

        field :scheduled_at, -> { String }, optional: false, nullable: true

        field :platform_configuration, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfiguration }, optional: true, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponseMediaItem] }, optional: false, nullable: false

        field :social_accounts, -> { Internal::Types::Array[Schedulin::Types::SocialAccountPublic] }, optional: false, nullable: false

        field :created_at, -> { String }, optional: false, nullable: false

        field :updated_at, -> { String }, optional: false, nullable: false
      end
    end
  end
end
