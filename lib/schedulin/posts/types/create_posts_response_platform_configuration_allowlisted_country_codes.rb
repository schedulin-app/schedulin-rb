# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationAllowlistedCountryCodes < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowlistedCountryCodesMediaItem] }, optional: true, nullable: false

        field :placement, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowlistedCountryCodesPlacement }, optional: true, nullable: false

        field :post_type, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowlistedCountryCodesPostType }, optional: true, nullable: false

        field :reply_control, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowlistedCountryCodesReplyControl }, optional: true, nullable: false

        field :topic, -> { String }, optional: true, nullable: false

        field :topic_tag, -> { String }, optional: true, nullable: false

        field :location, -> { String }, optional: true, nullable: false

        field :location_id, -> { String }, optional: true, nullable: false

        field :quote_post_id, -> { String }, optional: true, nullable: false

        field :reply_to_id, -> { String }, optional: true, nullable: false

        field :link_attachment, -> { String }, optional: true, nullable: false

        field :allowlisted_country_codes, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :poll, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowlistedCountryCodesPoll }, optional: true, nullable: false

        field :gif, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowlistedCountryCodesGif }, optional: true, nullable: false
      end
    end
  end
end
