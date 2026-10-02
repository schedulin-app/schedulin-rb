# frozen_string_literal: true

module Schedulin
  module Types
    # 422 error. `data.fieldErrors` maps each invalid field to its messages; `data.formErrors` holds errors not tied to
    # one field. `code` is "INPUT_VALIDATION_FAILED" for schema validation and "UNPROCESSABLE_CONTENT" for business-rule
    # rejections, whose reason is also in `data.message`.
    class ValidationErrorResponse < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :status, -> { Integer }, optional: false, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :defined_, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "defined"

      field :data, -> { Schedulin::Types::ValidationErrorResponseData }, optional: false, nullable: false
    end
  end
end
