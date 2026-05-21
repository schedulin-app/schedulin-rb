# frozen_string_literal: true

module Schedulin
  module Types
    module AnalyticsStatus
      extend Schedulin::Internal::Types::Enum

      IDLE = "IDLE"
      PROCESSING = "PROCESSING"
      FAILED = "FAILED"
    end
  end
end
