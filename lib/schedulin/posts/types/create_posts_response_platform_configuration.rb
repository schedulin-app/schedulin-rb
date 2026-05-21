# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CreatePostsResponsePlatformConfiguration < Internal::Types::Model
        extend Schedulin::Internal::Types::Union

        member -> { Object }

        member -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationBrandedContentSponsorIDs }

        member -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowComment }

        member -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationCommunityID }

        member -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowEmbedding }

        member -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationFeedTargeting }

        member -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationArticle }

        member -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationExternal }

        member -> { Schedulin::Posts::Types::CreatePostsResponsePlatformConfigurationAllowlistedCountryCodes }
      end
    end
  end
end
