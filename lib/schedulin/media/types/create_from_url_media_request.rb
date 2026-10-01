# frozen_string_literal: true

module Schedulin
  module Media
    module Types
      class CreateFromURLMediaRequest < Internal::Types::Model
        field :url, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :alt, -> { String }, optional: true, nullable: false

        field :content_type, -> { String }, optional: true, nullable: false, api_name: "contentType"
      end
    end
  end
end
