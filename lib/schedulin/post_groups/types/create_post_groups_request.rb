# frozen_string_literal: true

module Schedulin
  module PostGroups
    module Types
      class CreatePostGroupsRequest < Internal::Types::Model
        field :title, -> { String }, optional: true, nullable: false

        field :posts, -> { Internal::Types::Array[Schedulin::Types::PostCreate] }, optional: false, nullable: false
      end
    end
  end
end
