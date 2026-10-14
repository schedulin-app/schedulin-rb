# frozen_string_literal: true

module Schedulin
  module Analytics
    module Types
      class PlatformBreakdownAnalyticsResponsePlatformsItem < Internal::Types::Model
        field :platform, -> { String }, optional: false, nullable: false

        field :impressions, -> { Integer }, optional: false, nullable: false

        field :likes, -> { Integer }, optional: false, nullable: false

        field :comments, -> { Integer }, optional: false, nullable: false

        field :shares, -> { Integer }, optional: false, nullable: false

        field :engagement, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
