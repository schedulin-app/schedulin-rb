# frozen_string_literal: true

module Schedulin
  module Ideas
    module Types
      class ListIdeasResponseColumnsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: false, nullable: false

        field :order, -> { Integer }, optional: false, nullable: false

        field :is_done, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isDone"
      end
    end
  end
end
