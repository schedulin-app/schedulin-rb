# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationAllowlistedCountryCodesPoll < Internal::Types::Model
      field :question, -> { String }, optional: true, nullable: false

      field :options, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
