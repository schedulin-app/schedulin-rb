# frozen_string_literal: true

module Schedulin
  module Types
    module OauthScope
      extend Schedulin::Internal::Types::Enum

      POSTS_READ = "posts:read"
      POSTS_WRITE = "posts:write"
      TAGS_READ = "tags:read"
      TAGS_WRITE = "tags:write"
      SOCIAL_ACCOUNTS_READ = "social-accounts:read"
      SOCIAL_ACCOUNTS_WRITE = "social-accounts:write"
      CHANNELS_READ = "channels:read"
      MEDIA_READ = "media:read"
      MEDIA_WRITE = "media:write"
      ANALYTICS_READ = "analytics:read"
      ORG_READ = "org:read"
    end
  end
end
