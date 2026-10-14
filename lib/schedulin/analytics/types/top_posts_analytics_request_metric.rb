# frozen_string_literal: true

module Schedulin
  module Analytics
    module Types
      module TopPostsAnalyticsRequestMetric
        extend Schedulin::Internal::Types::Enum

        IMPRESSIONS = "impressions"
        REACH = "reach"
        LIKES = "likes"
        COMMENTS = "comments"
        SHARES = "shares"
        SAVES = "saves"
        VIDEO_VIEWS = "videoViews"
        ENGAGEMENT_TOTAL = "engagementTotal"
      end
    end
  end
end
