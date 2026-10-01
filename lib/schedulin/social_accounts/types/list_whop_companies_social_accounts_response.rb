# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ListWhopCompaniesSocialAccountsResponse < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Schedulin::SocialAccounts::Types::ListWhopCompaniesSocialAccountsResponseItemsItem] }, optional: false, nullable: false
      end
    end
  end
end
