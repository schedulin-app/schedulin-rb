# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsMediaItemTagsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { Schedulin::Types::PostWithRelationsMediaItemTagsItemType }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::PostWithRelationsMediaItemTagsItemPlatform }, optional: false, nullable: false

      field :x, -> { Integer }, optional: true, nullable: false

      field :y, -> { Integer }, optional: true, nullable: false
    end
  end
end
