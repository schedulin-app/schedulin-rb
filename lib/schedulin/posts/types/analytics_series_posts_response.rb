# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class AnalyticsSeriesPostsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Schedulin::Posts::Types::AnalyticsSeriesPostsResponseDataItem] }, optional: false, nullable: false
      end
    end
  end
end
