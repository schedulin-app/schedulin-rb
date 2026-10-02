# frozen_string_literal: true

module Schedulin
  module Types
    # 422 input validation error. `data.fieldErrors` maps each invalid field to its messages; `data.formErrors` holds
    # errors not tied to one field.
    class ValidationErrorResponse < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :status, -> { Integer }, optional: false, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :defined_, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "defined"

      field :data, -> { Schedulin::Types::ValidationErrorResponseData }, optional: false, nullable: false
    end
  end
end
