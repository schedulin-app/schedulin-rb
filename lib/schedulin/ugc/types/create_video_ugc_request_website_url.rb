# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class CreateVideoUgcRequestWebsiteURL < Internal::Types::Model
        extend Schedulin::Internal::Types::Union

        member -> { String }

        member -> { Schedulin::Ugc::Types::CreateVideoUgcRequestWebsiteURLOne }
      end
    end
  end
end
