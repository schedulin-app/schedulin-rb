# frozen_string_literal: true

module Schedulin
  module Types
    class MediaUpdate < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :mime_type, -> { String }, optional: true, nullable: false, api_name: "mimeType"

      field :width, -> { Integer }, optional: true, nullable: false

      field :height, -> { Integer }, optional: true, nullable: false

      field :size, -> { Integer }, optional: true, nullable: false

      field :duration, -> { Integer }, optional: true, nullable: false
    end
  end
end
