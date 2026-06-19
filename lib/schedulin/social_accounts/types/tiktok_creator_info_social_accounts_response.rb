# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class TiktokCreatorInfoSocialAccountsResponse < Internal::Types::Model
        field :error, -> { Schedulin::SocialAccounts::Types::TiktokCreatorInfoSocialAccountsResponseError }, optional: false, nullable: false

        field :data, -> { Schedulin::SocialAccounts::Types::TiktokCreatorInfoSocialAccountsResponseData }, optional: false, nullable: false
      end
    end
  end
end
