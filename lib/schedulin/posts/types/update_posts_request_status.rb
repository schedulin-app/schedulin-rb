# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      module UpdatePostsRequestStatus
        extend Schedulin::Internal::Types::Enum

        DRAFT = "DRAFT"
        SCHEDULED = "SCHEDULED"
        PROCESSING = "PROCESSING"
      end
    end
  end
end
