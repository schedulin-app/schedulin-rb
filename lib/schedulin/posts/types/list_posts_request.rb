# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class ListPostsRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :status, -> { Schedulin::Posts::Types::ListPostsRequestStatus }, optional: true, nullable: false

        field :statuses, -> { Schedulin::Posts::Types::ListPostsRequestStatusesItem }, optional: true, nullable: false

        field :approval_status, -> { Schedulin::Posts::Types::ListPostsRequestApprovalStatus }, optional: true, nullable: false, api_name: "approvalStatus"

        field :scheduled_at, -> { Schedulin::Types::ListPostsRequestScheduledAt }, optional: true, nullable: false, api_name: "scheduledAt"

        field :tag_ids, -> { String }, optional: true, nullable: false, api_name: "tagIds"

        field :tag_mode, -> { Schedulin::Posts::Types::ListPostsRequestTagMode }, optional: true, nullable: false, api_name: "tagMode"

        field :social_account_ids, -> { String }, optional: true, nullable: false, api_name: "socialAccountIds"

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
