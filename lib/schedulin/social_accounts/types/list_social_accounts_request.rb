# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ListSocialAccountsRequest < Internal::Types::Model
        field :profile_id, -> { String }, optional: true, nullable: false, api_name: "profileId"
      end
    end
  end
end
