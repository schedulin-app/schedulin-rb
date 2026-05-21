# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationAllowCommentMediaItemTagsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { Schedulin::Types::PostPlatformConfigurationAllowCommentMediaItemTagsItemType }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::PostPlatformConfigurationAllowCommentMediaItemTagsItemPlatform }, optional: false, nullable: false

      field :x, -> { Integer }, optional: true, nullable: false

      field :y, -> { Integer }, optional: true, nullable: false
    end
  end
end
