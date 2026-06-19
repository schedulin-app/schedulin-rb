# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class V0PostCountByTabRequest < Internal::Types::Model
        field :social_account_ids, -> { String }, optional: true, nullable: false, api_name: "socialAccountIds"
      end
    end
  end
end
