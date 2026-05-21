# frozen_string_literal: true

module Schedulin
  module Types
    module ImageProcessingStatus
      extend Schedulin::Internal::Types::Enum

      PENDING = "PENDING"
      PROCESSING = "PROCESSING"
      PROCESSED = "PROCESSED"
      FAILED = "FAILED"
    end
  end
end
