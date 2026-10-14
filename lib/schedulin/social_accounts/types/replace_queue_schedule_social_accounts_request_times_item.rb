# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ReplaceQueueScheduleSocialAccountsRequestTimesItem < Internal::Types::Model
        field :weekday, -> { Integer }, optional: false, nullable: false

        field :time, -> { String }, optional: false, nullable: false

        field :capacity, -> { Integer }, optional: true, nullable: false

        field :label, -> { String }, optional: true, nullable: false
      end
    end
  end
end
