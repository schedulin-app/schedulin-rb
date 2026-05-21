# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationExternalThreadgate < Internal::Types::Model
      field :allow, -> { Internal::Types::Array[Object] }, optional: true, nullable: false

      field :hidden_replies, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
