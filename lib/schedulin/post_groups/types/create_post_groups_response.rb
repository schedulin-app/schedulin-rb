# frozen_string_literal: true

module Schedulin
  module PostGroups
    module Types
      class CreatePostGroupsResponse < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :posts, -> { Internal::Types::Array[Schedulin::PostGroups::Types::CreatePostGroupsResponsePostsItem] }, optional: false, nullable: false
      end
    end
  end
end
