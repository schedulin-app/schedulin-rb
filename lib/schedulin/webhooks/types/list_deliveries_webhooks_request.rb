# frozen_string_literal: true

module Schedulin
  module Webhooks
    module Types
      class ListDeliveriesWebhooksRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :page, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
