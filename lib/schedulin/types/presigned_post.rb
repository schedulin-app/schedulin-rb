# frozen_string_literal: true

module Schedulin
  module Types
    class PresignedPost < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false

      field :method_, -> { Schedulin::Types::PresignedPostMethod }, optional: false, nullable: false, api_name: "method"
    end
  end
end
