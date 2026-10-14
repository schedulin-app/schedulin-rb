# frozen_string_literal: true

module Schedulin
  module Analytics
    module Types
      class PlatformBreakdownAnalyticsResponse < Internal::Types::Model
        field :platforms, -> { Internal::Types::Array[Schedulin::Analytics::Types::PlatformBreakdownAnalyticsResponsePlatformsItem] }, optional: false, nullable: false
      end
    end
  end
end
