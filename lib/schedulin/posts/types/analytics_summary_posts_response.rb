# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class AnalyticsSummaryPostsResponse < Internal::Types::Model
        field :analytics_latest, -> { Object }, optional: true, nullable: false, api_name: "analyticsLatest"

        field :analytics_last_fetched_at, -> { String }, optional: false, nullable: true, api_name: "analyticsLastFetchedAt"

        field :analytics_next_fetch_at, -> { String }, optional: false, nullable: true, api_name: "analyticsNextFetchAt"

        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
