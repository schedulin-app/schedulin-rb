# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class ListAvatarsUgcRequestSortItem < Internal::Types::Model
        field :id, -> { Schedulin::Ugc::Types::ListAvatarsUgcRequestSortItemID }, optional: false, nullable: false

        field :desc, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
