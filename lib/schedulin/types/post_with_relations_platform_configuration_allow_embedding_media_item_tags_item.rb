# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationAllowEmbeddingMediaItemTagsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowEmbeddingMediaItemTagsItemType }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowEmbeddingMediaItemTagsItemPlatform }, optional: false, nullable: false

      field :x, -> { Integer }, optional: true, nullable: false

      field :y, -> { Integer }, optional: true, nullable: false
    end
  end
end
