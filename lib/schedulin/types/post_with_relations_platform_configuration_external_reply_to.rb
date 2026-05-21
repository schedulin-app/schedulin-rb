# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationExternalReplyTo < Internal::Types::Model
      field :root, -> { String }, optional: false, nullable: false

      field :parent, -> { String }, optional: true, nullable: false
    end
  end
end
