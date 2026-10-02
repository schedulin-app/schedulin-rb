# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ListSlackChannelsSocialAccountsResponse < Internal::Types::Model
        field :items, -> { Internal::Types::Array[Schedulin::SocialAccounts::Types::ListSlackChannelsSocialAccountsResponseItemsItem] }, optional: false, nullable: false
      end
    end
  end
end
