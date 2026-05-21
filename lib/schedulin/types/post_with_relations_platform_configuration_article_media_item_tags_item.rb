# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationArticleMediaItemTagsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationArticleMediaItemTagsItemType }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationArticleMediaItemTagsItemPlatform }, optional: false, nullable: false

      field :x, -> { Integer }, optional: true, nullable: false

      field :y, -> { Integer }, optional: true, nullable: false
    end
  end
end
