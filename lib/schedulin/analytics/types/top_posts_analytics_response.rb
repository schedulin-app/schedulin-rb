# frozen_string_literal: true

module Schedulin
  module Analytics
    module Types
      class TopPostsAnalyticsResponse < Internal::Types::Model
        field :posts, -> { Internal::Types::Array[Schedulin::Analytics::Types::TopPostsAnalyticsResponsePostsItem] }, optional: false, nullable: false
      end
    end
  end
end
