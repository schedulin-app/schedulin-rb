# frozen_string_literal: true

module Schedulin
  module Ideas
    module Types
      class UpdateIdeasRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :description, -> { String }, optional: true, nullable: false

        field :column_id, -> { String }, optional: true, nullable: false, api_name: "columnId"
      end
    end
  end
end
