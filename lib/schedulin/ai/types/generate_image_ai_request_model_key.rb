# frozen_string_literal: true

module Schedulin
  module Ai
    module Types
      module GenerateImageAiRequestModelKey
        extend Schedulin::Internal::Types::Enum

        FLUX_SCHNELL = "flux_schnell"
        FLUX_DEV = "flux_dev"
        FLUX_PRO_ULTRA = "flux_pro_ultra"
      end
    end
  end
end
