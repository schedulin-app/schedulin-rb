# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsSocialAccount < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::SocialPlatform }, optional: false, nullable: false

      field :username, -> { String }, optional: false, nullable: true

      field :image_url, -> { String }, optional: false, nullable: true, api_name: "imageUrl"
    end
  end
end
