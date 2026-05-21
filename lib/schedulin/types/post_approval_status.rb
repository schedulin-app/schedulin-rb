# frozen_string_literal: true

module Schedulin
  module Types
    module PostApprovalStatus
      extend Schedulin::Internal::Types::Enum

      DRAFT = "DRAFT"
      PENDING_APPROVAL = "PENDING_APPROVAL"
      APPROVED = "APPROVED"
      REJECTED = "REJECTED"
    end
  end
end
