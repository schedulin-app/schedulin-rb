# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class PublishDraftPostsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :scheduled_at, -> { String }, optional: true, nullable: false, api_name: "scheduledAt"
      end
    end
  end
end
