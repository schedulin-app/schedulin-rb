# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationCommunityIDPoll < Internal::Types::Model
      field :duration_minutes, -> { Integer }, optional: false, nullable: false

      field :options, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :reply_settings, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationCommunityIDPollReplySettings }, optional: true, nullable: false
    end
  end
end
