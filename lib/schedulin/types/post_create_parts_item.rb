# frozen_string_literal: true

module Schedulin
  module Types
    class PostCreatePartsItem < Internal::Types::Model
      field :caption, -> { String }, optional: false, nullable: false

      field :media, -> { Internal::Types::Array[Schedulin::Types::PostCreatePartsItemMediaItem] }, optional: true, nullable: false
    end
  end
end
