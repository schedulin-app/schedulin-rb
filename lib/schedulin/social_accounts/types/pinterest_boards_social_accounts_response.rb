# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class PinterestBoardsSocialAccountsResponse < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Schedulin::SocialAccounts::Types::PinterestBoardsSocialAccountsResponseDataItem] }, optional: false, nullable: false
      end
    end
  end
end
