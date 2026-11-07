# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class GetVideoUgcRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :wait_seconds, -> { Integer }, optional: true, nullable: false, api_name: "waitSeconds"
      end
    end
  end
end
