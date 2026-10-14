# frozen_string_literal: true

module Schedulin
  module Workspace
    module Types
      class RetrieveWorkspaceResponsePlan < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: true

        field :name, -> { String }, optional: false, nullable: true

        field :status, -> { String }, optional: false, nullable: true

        field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
