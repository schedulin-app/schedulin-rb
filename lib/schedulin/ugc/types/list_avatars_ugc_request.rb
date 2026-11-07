# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class ListAvatarsUgcRequest < Internal::Types::Model
        field :page, -> { Integer }, optional: true, nullable: false

        field :per_page, -> { Integer }, optional: true, nullable: false, api_name: "perPage"

        field :sort, -> { Schedulin::Ugc::Types::ListAvatarsUgcRequestSortItem }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false

        field :status, -> { String }, optional: true, nullable: false
      end
    end
  end
end
