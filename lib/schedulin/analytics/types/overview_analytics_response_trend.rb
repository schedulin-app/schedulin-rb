# frozen_string_literal: true

module Schedulin
  module Analytics
    module Types
      # Percent change vs the previous window of the same length: 0 when both windows are zero, null when only the
      # previous window is zero
      class OverviewAnalyticsResponseTrend < Internal::Types::Model
        field :impressions, -> { Integer }, optional: false, nullable: true

        field :engagement, -> { Integer }, optional: false, nullable: true

        field :likes, -> { Integer }, optional: false, nullable: true

        field :audience, -> { Integer }, optional: false, nullable: true
      end
    end
  end
end
