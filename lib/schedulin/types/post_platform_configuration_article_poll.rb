# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationArticlePoll < Internal::Types::Model
      field :question, -> { String }, optional: false, nullable: false

      field :options, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :duration, -> { Schedulin::Types::PostPlatformConfigurationArticlePollDuration }, optional: true, nullable: false
    end
  end
end
