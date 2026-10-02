# frozen_string_literal: true

module Schedulin
  module Types
    class PostThreadPart < Internal::Types::Model
      field :caption, -> { String }, optional: false, nullable: false

      field :media, -> { Internal::Types::Array[Schedulin::Types::PostMedia] }, optional: false, nullable: false
    end
  end
end
