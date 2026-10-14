# frozen_string_literal: true

module Schedulin
  module Workspace
    module Types
      class RetrieveWorkspaceResponseLimitsChannels < Internal::Types::Model
        field :used, -> { Integer }, optional: false, nullable: false

        field :limit, -> { Integer }, optional: false, nullable: true
      end
    end
  end
end
