# frozen_string_literal: true

module Schedulin
  module Types
    module WebhookDeliveryStatus
      extend Schedulin::Internal::Types::Enum

      PENDING = "PENDING"
      SUCCESS = "SUCCESS"
      FAILED = "FAILED"
    end
  end
end
