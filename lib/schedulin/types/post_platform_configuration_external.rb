# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationExternal < Internal::Types::Model
      field :caption, -> { String }, optional: true, nullable: false

      field :media, -> { Internal::Types::Array[Schedulin::Types::PostPlatformConfigurationExternalMediaItem] }, optional: true, nullable: false

      field :alt_text, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :langs, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :external, -> { Schedulin::Types::PostPlatformConfigurationExternalExternal }, optional: true, nullable: false

      field :quote_post_uri, -> { String }, optional: true, nullable: false

      field :reply_to, -> { Schedulin::Types::PostPlatformConfigurationExternalReplyTo }, optional: true, nullable: false

      field :threadgate, -> { Schedulin::Types::PostPlatformConfigurationExternalThreadgate }, optional: true, nullable: false

      field :postgate, -> { Schedulin::Types::PostPlatformConfigurationExternalPostgate }, optional: true, nullable: false

      field :labels, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
