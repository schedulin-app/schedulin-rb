# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class MediaRegister < Internal::Types::Model
        field :key, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :alt, -> { String }, optional: true, nullable: false
      end
    end
  end
end
