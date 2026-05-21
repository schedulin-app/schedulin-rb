# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfigurationBrandedContentSponsorIDs < Internal::Types::Model
        field :caption, -> { String }, optional: true, nullable: false

        field :media, -> { Internal::Types::Array[Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationBrandedContentSponsorIDsMediaItem] }, optional: true, nullable: false

        field :placement, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationBrandedContentSponsorIDsPlacement }, optional: true, nullable: false

        field :collaborators, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :share_to_feed, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :location, -> { String }, optional: true, nullable: false

        field :trial_reel_type, -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationBrandedContentSponsorIDsTrialReelType }, optional: true, nullable: false

        field :music, -> { String }, optional: true, nullable: false

        field :tagged_products, -> { String }, optional: true, nullable: false

        field :first_comment, -> { String }, optional: true, nullable: false

        field :notify_me, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :is_paid_partnership, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :branded_content_sponsor_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
