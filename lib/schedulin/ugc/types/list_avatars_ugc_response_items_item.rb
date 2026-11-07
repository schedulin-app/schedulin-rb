# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class ListAvatarsUgcResponseItemsItem < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :status, -> { String }, optional: false, nullable: false

        field :description, -> { String }, optional: false, nullable: true

        field :voice_id, -> { String }, optional: false, nullable: true, api_name: "voiceId"

        field :url, -> { String }, optional: false, nullable: true

        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
      end
    end
  end
end
