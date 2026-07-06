# frozen_string_literal: true

module Schedulin
  module Platforms
    module Types
      class ListPlatformsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Schedulin::Platforms::Types::ListPlatformsResponseDataItem] }, optional: false, nullable: false
      end
    end
  end
end
