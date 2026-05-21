# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class PostCreatePartsItemMediaItemTagsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :type, -> { Schedulin::Posts::Types::PostCreatePartsItemMediaItemTagsItemType }, optional: false, nullable: false

        field :platform, -> { Schedulin::Posts::Types::PostCreatePartsItemMediaItemTagsItemPlatform }, optional: false, nullable: false

        field :x, -> { Integer }, optional: true, nullable: false

        field :y, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
