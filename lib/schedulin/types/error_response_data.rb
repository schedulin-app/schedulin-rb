# frozen_string_literal: true

module Schedulin
  module Types
    class ErrorResponseData < Internal::Types::Model
      field :message, -> { String }, optional: true, nullable: false

      field :user_message, -> { String }, optional: true, nullable: false, api_name: "userMessage"

      field :error_tag, -> { String }, optional: true, nullable: false, api_name: "errorTag"

      field :is_retryable, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isRetryable"
    end
  end
end
