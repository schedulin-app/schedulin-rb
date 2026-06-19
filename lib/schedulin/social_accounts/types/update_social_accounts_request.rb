# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class UpdateSocialAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :status, -> { Schedulin::SocialAccounts::Types::UpdateSocialAccountsRequestStatus }, optional: true, nullable: false
      end
    end
  end
end
