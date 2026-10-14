# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ReplaceQueueScheduleSocialAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :times, -> { Internal::Types::Array[Schedulin::SocialAccounts::Types::ReplaceQueueScheduleSocialAccountsRequestTimesItem] }, optional: false, nullable: false
      end
    end
  end
end
