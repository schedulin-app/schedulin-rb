# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class PostCreate < Internal::Types::Model
        field :caption, -> { String }, optional: false, nullable: false

        field :scheduled_at, -> { String }, optional: true, nullable: false, api_name: "scheduledAt"

        field :social_account_id, -> { String }, optional: false, nullable: false, api_name: "socialAccountId"

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::PostCreateMediaItem] }, optional: true, nullable: false

        field :thumbnail, -> { Schedulin::Posts::Types::PostCreateThumbnail }, optional: true, nullable: false

        field :platform_configuration, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "platformConfiguration"

        field :tag_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "tagIds"

        field :action, -> { Schedulin::Posts::Types::PostCreateAction }, optional: true, nullable: false

        field :parts, -> { Internal::Types::Array[Schedulin::Posts::Types::PostCreatePartsItem] }, optional: true, nullable: false
      end
    end
  end
end
