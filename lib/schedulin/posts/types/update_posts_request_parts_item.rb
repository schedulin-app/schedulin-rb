# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class UpdatePostsRequestPartsItem < Internal::Types::Model
        field :caption, -> { String }, optional: false, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::UpdatePostsRequestPartsItemMediaItem] }, optional: true, nullable: false
      end
    end
  end
end
