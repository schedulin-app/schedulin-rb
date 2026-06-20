# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      module ListPostsRequestStatusesItem
        extend Schedulin::Internal::Types::Enum

        SCHEDULED = "SCHEDULED"
        PROCESSING = "PROCESSING"
        COMPLETED = "COMPLETED"
        DRAFT = "DRAFT"
        FAILED = "FAILED"
      end
    end
  end
end
