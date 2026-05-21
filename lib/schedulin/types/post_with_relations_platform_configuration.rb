# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfiguration < Internal::Types::Model
      extend Schedulin::Internal::Types::Union

      member -> { Object }

      member -> { Schedulin::Types::PostWithRelationsPlatformConfigurationBrandedContentSponsorIDs }

      member -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowComment }

      member -> { Schedulin::Types::PostWithRelationsPlatformConfigurationCommunityID }

      member -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowEmbedding }

      member -> { Schedulin::Types::PostWithRelationsPlatformConfigurationFeedTargeting }

      member -> { Schedulin::Types::PostWithRelationsPlatformConfigurationArticle }

      member -> { Schedulin::Types::PostWithRelationsPlatformConfigurationExternal }

      member -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowlistedCountryCodes }
    end
  end
end
