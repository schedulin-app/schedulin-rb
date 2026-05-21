# frozen_string_literal: true

module Schedulin
  module Types
    class MediaSearchCursorUpdatedAt < Internal::Types::Model
      extend Schedulin::Internal::Types::Union

      member -> { String }

      member -> { String }
    end
  end
end
