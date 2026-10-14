# frozen_string_literal: true

module Schedulin
  module Analytics
    module Types
      class TopPostsAnalyticsResponsePostsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :platform, -> { String }, optional: false, nullable: false

        field :caption, -> { String }, optional: false, nullable: true

        field :url, -> { String }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: true, api_name: "createdAt"

        field :value, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
