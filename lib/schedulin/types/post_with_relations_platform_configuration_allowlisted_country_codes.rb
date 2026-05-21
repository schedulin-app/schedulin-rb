# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationAllowlistedCountryCodes < Internal::Types::Model
      field :caption, -> { String }, optional: true, nullable: false

      field :media, -> { Internal::Types::Array[Schedulin::Types::PostWithRelationsPlatformConfigurationAllowlistedCountryCodesMediaItem] }, optional: true, nullable: false

      field :placement, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowlistedCountryCodesPlacement }, optional: true, nullable: false

      field :post_type, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowlistedCountryCodesPostType }, optional: true, nullable: false

      field :reply_control, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowlistedCountryCodesReplyControl }, optional: true, nullable: false

      field :topic, -> { String }, optional: true, nullable: false

      field :topic_tag, -> { String }, optional: true, nullable: false

      field :location, -> { String }, optional: true, nullable: false

      field :location_id, -> { String }, optional: true, nullable: false

      field :quote_post_id, -> { String }, optional: true, nullable: false

      field :reply_to_id, -> { String }, optional: true, nullable: false

      field :link_attachment, -> { String }, optional: true, nullable: false

      field :allowlisted_country_codes, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :poll, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowlistedCountryCodesPoll }, optional: true, nullable: false

      field :gif, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowlistedCountryCodesGif }, optional: true, nullable: false
    end
  end
end
