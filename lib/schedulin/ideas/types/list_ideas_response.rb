# frozen_string_literal: true

module Schedulin
  module Ideas
    module Types
      class ListIdeasResponse < Internal::Types::Model
        field :columns, -> { Internal::Types::Array[Schedulin::Ideas::Types::ListIdeasResponseColumnsItem] }, optional: false, nullable: false

        field :ideas, -> { Internal::Types::Array[Schedulin::Ideas::Types::ListIdeasResponseIdeasItem] }, optional: false, nullable: false
      end
    end
  end
end
