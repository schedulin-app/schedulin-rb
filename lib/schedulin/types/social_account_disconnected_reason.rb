# frozen_string_literal: true

module Schedulin
  module Types
    module SocialAccountDisconnectedReason
      extend Schedulin::Internal::Types::Enum

      TOKEN_EXPIRED = "TOKEN_EXPIRED"
      TOKEN_INVALID = "TOKEN_INVALID"
      TOKEN_REVOKED = "TOKEN_REVOKED"
      REFRESH_FAILED = "REFRESH_FAILED"
      ACCOUNT_SUSPENDED = "ACCOUNT_SUSPENDED"
      PERMISSION_DENIED = "PERMISSION_DENIED"
    end
  end
end
