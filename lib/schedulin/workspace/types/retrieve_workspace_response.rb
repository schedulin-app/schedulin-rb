# frozen_string_literal: true

module Schedulin
  module Workspace
    module Types
      class RetrieveWorkspaceResponse < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :slug, -> { String }, optional: false, nullable: true

        field :logo, -> { String }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :require_approval, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "requireApproval"

        field :role, -> { String }, optional: false, nullable: true

        field :member_count, -> { Integer }, optional: false, nullable: false, api_name: "memberCount"

        field :plan, -> { Schedulin::Workspace::Types::RetrieveWorkspaceResponsePlan }, optional: false, nullable: false

        field :limits, -> { Schedulin::Workspace::Types::RetrieveWorkspaceResponseLimits }, optional: false, nullable: false
      end
    end
  end
end
