# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationAllowlistedCountryCodesGif < Internal::Types::Model
      field :gif_id, -> { String }, optional: false, nullable: false

      field :gif_provider, -> { Schedulin::Types::PostPlatformConfigurationAllowlistedCountryCodesGifGifProvider }, optional: true, nullable: false
    end
  end
end
