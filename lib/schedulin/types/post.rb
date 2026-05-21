# frozen_string_literal: true

module Schedulin
  module Types
    class Post < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :external_id, -> { String }, optional: false, nullable: true, api_name: "externalId"

      field :caption, -> { String }, optional: false, nullable: false

      field :status, -> { Schedulin::Types::PostStatus }, optional: false, nullable: false

      field :approval_status, -> { Schedulin::Types::PostApprovalStatus }, optional: false, nullable: false, api_name: "approvalStatus"

      field :approval_requested_at, -> { String }, optional: false, nullable: true, api_name: "approvalRequestedAt"

      field :approval_requested_by, -> { String }, optional: false, nullable: true, api_name: "approvalRequestedBy"

      field :approved_at, -> { String }, optional: false, nullable: true, api_name: "approvedAt"

      field :approved_by, -> { String }, optional: false, nullable: true, api_name: "approvedBy"

      field :rejection_reason, -> { String }, optional: false, nullable: true, api_name: "rejectionReason"

      field :scheduled_at, -> { String }, optional: false, nullable: true, api_name: "scheduledAt"

      field :platform_configuration, -> { Schedulin::Types::PostPlatformConfiguration }, optional: true, nullable: false, api_name: "platformConfiguration"

      field :social_account_id, -> { String }, optional: false, nullable: false, api_name: "socialAccountId"

      field :url, -> { String }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
