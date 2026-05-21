# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class DeleteSocialAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
