# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CountByTabPostsRequest < Internal::Types::Model
        field :social_account_ids, -> { String }, optional: true, nullable: false, api_name: "socialAccountIds"
      end
    end
  end
end
