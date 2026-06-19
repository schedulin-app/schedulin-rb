# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      module CreatePresignedPostIntent
        extend Schedulin::Internal::Types::Enum

        POST = "post"
        CLIP_SOURCE = "clip-source"
        PUBLIC_ASSET = "public-asset"
      end
    end
  end
end
