# frozen_string_literal: true

module Schedulin
  module Analytics
    module Types
      class TopPostsAnalyticsRequest < Internal::Types::Model
        field :from, -> { String }, optional: false, nullable: false

        field :to, -> { String }, optional: false, nullable: false

        field :platforms, -> { Schedulin::Analytics::Types::TopPostsAnalyticsRequestPlatformsItem }, optional: true, nullable: false

        field :social_account_ids, -> { String }, optional: true, nullable: false, api_name: "socialAccountIds"

        field :metric, -> { Schedulin::Analytics::Types::TopPostsAnalyticsRequestMetric }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
