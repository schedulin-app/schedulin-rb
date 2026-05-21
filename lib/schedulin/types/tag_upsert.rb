# frozen_string_literal: true

module Schedulin
  module Types
    class TagUpsert < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :color, -> { String }, optional: false, nullable: false
    end
  end
end
