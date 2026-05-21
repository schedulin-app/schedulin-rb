# frozen_string_literal: true

module Schedulin
  module Types
    class TagSearch < Internal::Types::Model
      field :q, -> { String }, optional: true, nullable: false

      field :limit, -> { Integer }, optional: true, nullable: false
    end
  end
end
