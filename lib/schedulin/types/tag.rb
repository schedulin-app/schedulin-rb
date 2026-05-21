# frozen_string_literal: true

module Schedulin
  module Types
    class Tag < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :user_id, -> { String }, optional: false, nullable: false, api_name: "userId"

      field :name, -> { String }, optional: false, nullable: false

      field :color, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"
    end
  end
end
