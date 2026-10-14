# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ReplaceQueueScheduleSocialAccountsResponse < Internal::Types::Model
        field :timezone, -> { String }, optional: false, nullable: false

        field :times, -> { Internal::Types::Array[Schedulin::SocialAccounts::Types::ReplaceQueueScheduleSocialAccountsResponseTimesItem] }, optional: false, nullable: false
      end
    end
  end
end
