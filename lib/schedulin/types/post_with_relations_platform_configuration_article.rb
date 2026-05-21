# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationArticle < Internal::Types::Model
      field :caption, -> { String }, optional: true, nullable: false

      field :media, -> { Internal::Types::Array[Schedulin::Types::PostWithRelationsPlatformConfigurationArticleMediaItem] }, optional: true, nullable: false

      field :visibility, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationArticleVisibility }, optional: true, nullable: false

      field :alt_text, -> { String }, optional: true, nullable: false

      field :first_comment, -> { String }, optional: true, nullable: false

      field :author_kind, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationArticleAuthorKind }, optional: true, nullable: false

      field :organization_id, -> { String }, optional: true, nullable: false

      field :reshare_disabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :article, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationArticleArticle }, optional: true, nullable: false

      field :poll, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationArticlePoll }, optional: true, nullable: false

      field :multi_image_alt_text, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :target_entities, -> { Internal::Types::Array[Schedulin::Types::PostWithRelationsPlatformConfigurationArticleTargetEntitiesItem] }, optional: true, nullable: false
    end
  end
end
