# frozen_string_literal: true

module Schedulin
  module Ideas
    module Types
      class ListIdeasResponseIdeasItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :description, -> { String }, optional: false, nullable: true

        field :column_id, -> { String }, optional: false, nullable: false, api_name: "columnId"

        field :order, -> { Integer }, optional: false, nullable: false

        field :completed_at, -> { String }, optional: false, nullable: true, api_name: "completedAt"

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

        field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
      end
    end
  end
end
