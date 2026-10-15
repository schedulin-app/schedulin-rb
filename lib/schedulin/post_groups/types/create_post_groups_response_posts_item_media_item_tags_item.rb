# frozen_string_literal: true

module Schedulin
  module PostGroups
    module Types
      class CreatePostGroupsResponsePostsItemMediaItemTagsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :type, -> { Schedulin::PostGroups::Types::CreatePostGroupsResponsePostsItemMediaItemTagsItemType }, optional: false, nullable: false

        field :platform, -> { Schedulin::PostGroups::Types::CreatePostGroupsResponsePostsItemMediaItemTagsItemPlatform }, optional: false, nullable: false

        field :x, -> { Integer }, optional: true, nullable: false

        field :y, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
