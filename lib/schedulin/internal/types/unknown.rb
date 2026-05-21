# frozen_string_literal: true

module Schedulin
  module Internal
    module Types
      module Unknown
        include Schedulin::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
