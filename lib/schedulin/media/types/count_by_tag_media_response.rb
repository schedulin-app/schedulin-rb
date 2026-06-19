# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class CountByTagMediaResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Schedulin::Media::Types::CountByTagMediaResponseDataItem] }, optional: false, nullable: false
      end
    end
  end
end
