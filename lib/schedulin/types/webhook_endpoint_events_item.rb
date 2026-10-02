# frozen_string_literal: true

module Schedulin
  module Types
    module WebhookEndpointEventsItem
      extend Schedulin::Internal::Types::Enum

      POST_PUBLISHED = "post.published"
      POST_FAILED = "post.failed"
      GENERATION_COMPLETED = "generation.completed"
      GENERATION_FAILED = "generation.failed"
    end
  end
end
