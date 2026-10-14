# frozen_string_literal: true

module Schedulin
  module Workspace
    module Types
      class RetrieveWorkspaceResponseLimits < Internal::Types::Model
        field :channels, -> { Schedulin::Workspace::Types::RetrieveWorkspaceResponseLimitsChannels }, optional: false, nullable: false

        field :trial_posts, -> { Schedulin::Workspace::Types::RetrieveWorkspaceResponseLimitsTrialPosts }, optional: false, nullable: true, api_name: "trialPosts"
      end
    end
  end
end
