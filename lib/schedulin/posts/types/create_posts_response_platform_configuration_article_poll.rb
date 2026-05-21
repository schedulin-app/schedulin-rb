# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationArticlePoll < Internal::Types::Model
        field :question, -> { String }, optional: false, nullable: false

        field :options, -> { Internal::Types::Array[String] }, optional: false, nullable: false

        field :duration, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationArticlePollDuration }, optional: true, nullable: false
      end
    end
  end
end
