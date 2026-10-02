# frozen_string_literal: true

module Schedulin
  module Types
    module AiGenerationStatus
      extend Schedulin::Internal::Types::Enum

      PENDING = "PENDING"
      PROCESSING = "PROCESSING"
      COMPLETED = "COMPLETED"
      FAILED = "FAILED"
      CANCELLED = "CANCELLED"
    end
  end
end
