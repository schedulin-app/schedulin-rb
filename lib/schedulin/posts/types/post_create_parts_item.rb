# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class PostCreatePartsItem < Internal::Types::Model
        field :caption, -> { String }, optional: false, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::PostCreatePartsItemMediaItem] }, optional: true, nullable: false
      end
    end
  end
end
