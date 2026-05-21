# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      module UpdateSocialAccountsRequestImageProcessingStatus
        extend Schedulin::Internal::Types::Enum

        PENDING = "PENDING"
        PROCESSING = "PROCESSING"
        PROCESSED = "PROCESSED"
        FAILED = "FAILED"
      end
    end
  end
end
