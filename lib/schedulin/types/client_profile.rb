# frozen_string_literal: true

module Schedulin
  module Types
    class ClientProfile < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :external_id, -> { String }, optional: false, nullable: true, api_name: "externalId"

      field :name, -> { String }, optional: false, nullable: false

      field :social_accounts, -> { Internal::Types::Array[Schedulin::Types::ClientProfileSocialAccountsItem] }, optional: false, nullable: false, api_name: "socialAccounts"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
