# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class ListMediaRequestCursorUpdatedAt < Internal::Types::Model
        extend Schedulin::Internal::Types::Union

        member -> { String }

        member -> { String }
      end
    end
  end
end
