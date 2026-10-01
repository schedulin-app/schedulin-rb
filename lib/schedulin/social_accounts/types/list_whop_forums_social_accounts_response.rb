# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ListWhopForumsSocialAccountsResponse < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Schedulin::SocialAccounts::Types::ListWhopForumsSocialAccountsResponseItemsItem] }, optional: false, nullable: false
      end
    end
  end
end
