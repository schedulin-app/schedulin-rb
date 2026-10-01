# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class CreateUploadLinkMediaRequest < Internal::Types::Model
        field :expires_in_hours, -> { Integer }, optional: true, nullable: false, api_name: "expiresInHours"
      end
    end
  end
end
