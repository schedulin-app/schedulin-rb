# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class AnalyticsSeriesPostsResponseItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :collected_at, -> { String }, optional: false, nullable: false, api_name: "collectedAt"

        field :platform, -> { Schedulin::Types::SocialPlatform }, optional: false, nullable: false

        field :metrics, -> { Object }, optional: true, nullable: false
      end
    end
  end
end
