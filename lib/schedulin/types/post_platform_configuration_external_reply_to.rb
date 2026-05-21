# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationExternalReplyTo < Internal::Types::Model
      field :root, -> { String }, optional: false, nullable: false

      field :parent, -> { String }, optional: true, nullable: false
    end
  end
end
