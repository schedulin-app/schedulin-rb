# frozen_string_literal: true

module Schedulin
  module Types
    class ErrorResponse < Internal::Types::Model
      field :error, -> { String }, optional: false, nullable: false

      field :code, -> { Integer }, optional: false, nullable: false
    end
  end
end
