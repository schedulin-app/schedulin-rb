# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class RetryPostsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :force, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :scheduled_at, -> { String }, optional: true, nullable: false, api_name: "scheduledAt"
      end
    end
  end
end
