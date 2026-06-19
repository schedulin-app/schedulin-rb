# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ListSocialAccountsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Schedulin::SocialAccounts::Types::ListSocialAccountsResponseDataItem] }, optional: false, nullable: false
      end
    end
  end
end
