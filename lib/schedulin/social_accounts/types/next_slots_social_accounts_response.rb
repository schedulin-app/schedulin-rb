# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class NextSlotsSocialAccountsResponse < Internal::Types::Model
        field :slots, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
