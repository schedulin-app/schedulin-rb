# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      module CreatePostsResponsePlatformConfigurationAllowCommentPrivacyStatus
        extend Schedulin::Internal::Types::Enum

        PUBLIC = "public"
        PRIVATE = "private"
        FRIENDS = "friends"
        MUTUAL_FOLLOW_FRIENDS = "mutual_follow_friends"
        FOLLOWER_OF_CREATOR = "follower_of_creator"
        SELF_ONLY = "self_only"
        PUBLIC_TO_EVERYONE = "PUBLIC_TO_EVERYONE"
      end
    end
  end
end
