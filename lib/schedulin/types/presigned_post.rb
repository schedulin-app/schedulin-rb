# frozen_string_literal: true

module Schedulin
  module Types
    class PresignedPost < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :fields, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false
    end
  end
end
