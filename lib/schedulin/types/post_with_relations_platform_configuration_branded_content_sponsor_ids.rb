# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationBrandedContentSponsorIDs < Internal::Types::Model
      field :caption, -> { String }, optional: true, nullable: false

      field :media, -> { Internal::Types::Array[Schedulin::Types::PostWithRelationsPlatformConfigurationBrandedContentSponsorIDsMediaItem] }, optional: true, nullable: false

      field :placement, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationBrandedContentSponsorIDsPlacement }, optional: true, nullable: false

      field :collaborators, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :share_to_feed, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :location, -> { String }, optional: true, nullable: false

      field :trial_reel_type, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationBrandedContentSponsorIDsTrialReelType }, optional: true, nullable: false

      field :music, -> { String }, optional: true, nullable: false

      field :tagged_products, -> { String }, optional: true, nullable: false

      field :first_comment, -> { String }, optional: true, nullable: false

      field :notify_me, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_paid_partnership, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :branded_content_sponsor_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
