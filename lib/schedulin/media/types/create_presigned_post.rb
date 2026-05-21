# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class CreatePresignedPost < Internal::Types::Model
        field :content_type, -> { String }, optional: false, nullable: false, api_name: "contentType"

        field :key, -> { String }, optional: false, nullable: false

        field :size, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
