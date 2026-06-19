# frozen_string_literal: true

module Schedulin
  module Types
    class Media < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :mime_type, -> { String }, optional: false, nullable: false, api_name: "mimeType"

      field :width, -> { Integer }, optional: false, nullable: true

      field :height, -> { Integer }, optional: false, nullable: true

      field :duration, -> { Integer }, optional: false, nullable: true

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :bucket, -> { String }, optional: false, nullable: false

      field :key, -> { String }, optional: false, nullable: false

      field :size, -> { Integer }, optional: false, nullable: true
    end
  end
end
