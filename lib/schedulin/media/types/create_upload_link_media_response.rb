# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class CreateUploadLinkMediaResponse < Internal::Types::Model
        field :url, -> { String }, optional: false, nullable: false

        field :expires_at, -> { String }, optional: false, nullable: false, api_name: "expiresAt"
      end
    end
  end
end
