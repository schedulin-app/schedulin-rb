# frozen_string_literal: true

module Schedulin
  module SocialAccounts
    module Types
      class ListWhopForumsSocialAccountsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :company_id, -> { String }, optional: false, nullable: false, api_name: "companyId"
      end
    end
  end
end
