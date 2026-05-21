# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class UpdateTimezoneSocialAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :timezone, -> { String }, optional: false, nullable: false
      end
    end
  end
end
