# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ReplaceQueueScheduleSocialAccountsResponseTimesItem < Internal::Types::Model
        field :weekday, -> { Integer }, optional: false, nullable: false

        field :time, -> { String }, optional: false, nullable: false

        field :capacity, -> { Integer }, optional: true, nullable: false

        field :label, -> { String }, optional: false, nullable: true
      end
    end
  end
end
