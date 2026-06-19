# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class PinterestBoardsSocialAccountsResponseDataItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :privacy, -> { Schedulin::SocialAccounts::Types::PinterestBoardsSocialAccountsResponseDataItemPrivacy }, optional: true, nullable: false
      end
    end
  end
end
