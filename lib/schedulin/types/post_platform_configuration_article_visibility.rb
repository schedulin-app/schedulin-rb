# frozen_string_literal: true

module Schedulin
  module Types
    module PostPlatformConfigurationArticleVisibility
      extend Schedulin::Internal::Types::Enum

      PUBLIC = "PUBLIC"
      CONNECTIONS = "CONNECTIONS"
      LOGGED_IN = "LOGGED_IN"
      CONTAINER = "CONTAINER"
    end
  end
end
