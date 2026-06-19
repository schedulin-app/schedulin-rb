# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class TiktokCreatorInfoSocialAccountsResponseError < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false

        field :message, -> { String }, optional: false, nullable: false

        field :log_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
