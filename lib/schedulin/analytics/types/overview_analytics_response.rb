# frozen_string_literal: true

module Schedulin
  module Analytics
    module Types
      class OverviewAnalyticsResponse < Internal::Types::Model
        field :totals, -> { Schedulin::Analytics::Types::OverviewAnalyticsResponseTotals }, optional: false, nullable: false

        field :trend, -> { Schedulin::Analytics::Types::OverviewAnalyticsResponseTrend }, optional: false, nullable: false
      end
    end
  end
end
