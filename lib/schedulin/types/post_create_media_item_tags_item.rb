# frozen_string_literal: true

module Schedulin
  module Types
    class PostCreateMediaItemTagsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { Schedulin::Types::PostCreateMediaItemTagsItemType }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::PostCreateMediaItemTagsItemPlatform }, optional: false, nullable: false

      field :x, -> { Integer }, optional: true, nullable: false

      field :y, -> { Integer }, optional: true, nullable: false
    end
  end
end
