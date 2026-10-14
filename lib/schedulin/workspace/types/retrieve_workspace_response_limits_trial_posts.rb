# frozen_string_literal: true

module Schedulin
  module Workspace
    module Types
      class RetrieveWorkspaceResponseLimitsTrialPosts < Internal::Types::Model
        field :used, -> { Integer }, optional: false, nullable: false

        field :limit, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
