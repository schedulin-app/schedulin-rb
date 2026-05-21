# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class UpdatePostsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :caption, -> { String }, optional: true, nullable: false

        field :scheduled_at, -> { String }, optional: true, nullable: false, api_name: "scheduledAt"

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::UpdatePostsRequestMediaItem] }, optional: true, nullable: false

        field :platform_configuration, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "platformConfiguration"

        field :status, -> { Schedulin::Posts::Types::UpdatePostsRequestStatus }, optional: true, nullable: false

        field :tag_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "tagIds"
      end
    end
  end
end
