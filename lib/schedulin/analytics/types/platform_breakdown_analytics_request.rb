# frozen_string_literal: true

module Schedulin
  module Analytics
    module Types
      class PlatformBreakdownAnalyticsRequest < Internal::Types::Model
        field :from, -> { String }, optional: false, nullable: false

        field :to, -> { String }, optional: false, nullable: false

        field :platforms, -> { Schedulin::Analytics::Types::PlatformBreakdownAnalyticsRequestPlatformsItem }, optional: true, nullable: false

        field :social_account_ids, -> { String }, optional: true, nullable: false, api_name: "socialAccountIds"
      end
    end
  end
end
