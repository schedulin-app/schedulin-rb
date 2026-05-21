# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class AnalyticsSeriesPostsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
