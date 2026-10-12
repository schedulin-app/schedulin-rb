# frozen_string_literal: true

module Schedulin
  module Webhooks
    module Types
      module UpdateWebhooksRequestEventsItem
        extend Schedulin::Internal::Types::Enum

        POST_PUBLISHED = "post.published"
        POST_FAILED = "post.failed"
        GENERATION_COMPLETED = "generation.completed"
        GENERATION_FAILED = "generation.failed"
        SOCIAL_ACCOUNT_CONNECTED = "social_account.connected"
      end
    end
  end
end
