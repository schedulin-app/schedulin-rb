# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ListWhopCompaniesSocialAccountsResponseItemsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
