# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class CreateVideoUgcRequestProductScreenshot < Internal::Types::Model
        field :key, -> { String }, optional: false, nullable: false

        field :url, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
