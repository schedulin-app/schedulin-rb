# frozen_string_literal: true

module Schedulin
  module Analytics
    module Types
      class OverviewAnalyticsResponseTotals < Internal::Types::Model
        field :impressions, -> { Integer }, optional: false, nullable: false

        field :reach, -> { Integer }, optional: false, nullable: false

        field :likes, -> { Integer }, optional: false, nullable: false

        field :comments, -> { Integer }, optional: false, nullable: false

        field :shares, -> { Integer }, optional: false, nullable: false

        field :saves, -> { Integer }, optional: false, nullable: false

        field :video_views, -> { Integer }, optional: false, nullable: false, api_name: "videoViews"

        field :clicks, -> { Integer }, optional: false, nullable: false

        field :link_clicks, -> { Integer }, optional: false, nullable: false, api_name: "linkClicks"

        field :engagement, -> { Integer }, optional: false, nullable: false

        field :audience, -> { Integer }, optional: false, nullable: false

        field :posts_published, -> { Integer }, optional: false, nullable: false, api_name: "postsPublished"
      end
    end
  end
end
