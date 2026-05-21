# frozen_string_literal: true

module Schedulin
  module Types
    module PostStatus
      extend Schedulin::Internal::Types::Enum

      SCHEDULED = "SCHEDULED"
      PROCESSING = "PROCESSING"
      COMPLETED = "COMPLETED"
      DRAFT = "DRAFT"
      FAILED = "FAILED"
    end
  end
end
