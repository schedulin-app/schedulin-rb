# frozen_string_literal: true

module Schedulin
  module Types
    # Error envelope. The machine-readable `code` and HTTP `status` are always present; the human-readable reason is in
    # `data.message` (or `data.fieldErrors` for 422 validation errors).
    class ErrorResponse < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :status, -> { Integer }, optional: false, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
