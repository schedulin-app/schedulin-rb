# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationArticle < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationArticleMediaItem] }, optional: true, nullable: false

        field :visibility, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationArticleVisibility }, optional: true, nullable: false

        field :alt_text, -> { String }, optional: true, nullable: false

        field :first_comment, -> { String }, optional: true, nullable: false

        field :author_kind, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationArticleAuthorKind }, optional: true, nullable: false

        field :organization_id, -> { String }, optional: true, nullable: false

        field :reshare_disabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :article, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationArticleArticle }, optional: true, nullable: false

        field :poll, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationArticlePoll }, optional: true, nullable: false

        field :multi_image_alt_text, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :target_entities, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationArticleTargetEntitiesItem] }, optional: true, nullable: false
      end
    end
  end
end
