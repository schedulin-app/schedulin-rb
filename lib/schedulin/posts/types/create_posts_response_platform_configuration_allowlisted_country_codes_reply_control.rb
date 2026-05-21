# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      module CreatePostsResponsePlatformConfigurationAllowlistedCountryCodesReplyControl
        extend Schedulin::Internal::Types::Enum

        EVERYONE = "everyone"
        ACCOUNTS_YOU_FOLLOW = "accounts_you_follow"
        MENTIONED_ONLY = "mentioned_only"
        PARENT_POST_AUTHOR_ONLY = "parent_post_author_only"
        FOLLOWERS_ONLY = "followers_only"
      end
    end
  end
end
