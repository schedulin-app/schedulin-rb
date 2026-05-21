# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfiguration < Internal::Types::Model
      extend Schedulin::Internal::Types::Union

      member -> { Object }

      member -> { Schedulin::Types::PostPlatformConfigurationBrandedContentSponsorIDs }

      member -> { Schedulin::Types::PostPlatformConfigurationAllowComment }

      member -> { Schedulin::Types::PostPlatformConfigurationCommunityID }

      member -> { Schedulin::Types::PostPlatformConfigurationAllowEmbedding }

      member -> { Schedulin::Types::PostPlatformConfigurationFeedTargeting }

      member -> { Schedulin::Types::PostPlatformConfigurationArticle }

      member -> { Schedulin::Types::PostPlatformConfigurationExternal }

      member -> { Schedulin::Types::PostPlatformConfigurationAllowlistedCountryCodes }
    end
  end
end
