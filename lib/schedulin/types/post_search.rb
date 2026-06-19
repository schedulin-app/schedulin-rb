# frozen_string_literal: true

module Schedulin
  module Types
    class PostSearch < Internal::Types::Model
      field :page, -> { Integer }, optional: true, nullable: false

      field :status, -> { Schedulin::Types::PostSearchStatus }, optional: true, nullable: false

      field :approval_status, -> { Schedulin::Types::PostSearchApprovalStatus }, optional: true, nullable: false, api_name: "approvalStatus"

      field :scheduled_at, -> { Schedulin::Types::PostSearchScheduledAt }, optional: true, nullable: false, api_name: "scheduledAt"

      field :tag_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "tagIds"

      field :tag_mode, -> { Schedulin::Types::PostSearchTagMode }, optional: true, nullable: false, api_name: "tagMode"

      field :social_account_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "socialAccountIds"

      field :limit, -> { Integer }, optional: true, nullable: false
    end
  end
end
