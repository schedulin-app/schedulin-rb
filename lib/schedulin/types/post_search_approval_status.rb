# frozen_string_literal: true

module Schedulin
  module Types
    module PostSearchApprovalStatus
      extend Schedulin::Internal::Types::Enum

      DRAFT = "DRAFT"
      PENDING_APPROVAL = "PENDING_APPROVAL"
      APPROVED = "APPROVED"
      REJECTED = "REJECTED"
    end
  end
end
