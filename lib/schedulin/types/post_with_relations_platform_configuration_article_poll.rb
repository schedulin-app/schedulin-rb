# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationArticlePoll < Internal::Types::Model
      field :question, -> { String }, optional: false, nullable: false

      field :options, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :duration, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationArticlePollDuration }, optional: true, nullable: false
    end
  end
end
