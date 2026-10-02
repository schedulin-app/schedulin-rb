# frozen_string_literal: true

module Schedulin
  module Types
    # 429 rate-limit error. Per-key request limits return `code: "RATE_LIMITED"` (also mirrored under `error`); the
    # per-user limiter returns `code: "TOO_MANY_REQUESTS"`. Honor the `Retry-After` header.
    class RateLimitErrorResponse < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :status, -> { Integer }, optional: false, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :defined_, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "defined"

      field :data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :error, -> { Schedulin::Types::RateLimitErrorResponseError }, optional: true, nullable: false
    end
  end
end
