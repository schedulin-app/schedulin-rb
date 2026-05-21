# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationExternalExternal < Internal::Types::Model
      field :uri, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: true, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :thumb_url, -> { String }, optional: true, nullable: false
    end
  end
end
