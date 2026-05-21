# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      module UpdatePostsRequestStatus
        extend Schedulin::Internal::Types::Enum

        DRAFT = "DRAFT"
        SCHEDULED = "SCHEDULED"
        PROCESSING = "PROCESSING"
        COMPLETED = "COMPLETED"
        FAILED = "FAILED"
      end
    end
  end
end
