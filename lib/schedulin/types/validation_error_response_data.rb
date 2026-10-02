# frozen_string_literal: true

module Schedulin
  module Types
    class ValidationErrorResponseData < Internal::Types::Model
      field :message, -> { String }, optional: true, nullable: false

      field :form_errors, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "formErrors"

      field :field_errors, -> { Internal::Types::Hash[String, Internal::Types::Array[String]] }, optional: true, nullable: false, api_name: "fieldErrors"
    end
  end
end
