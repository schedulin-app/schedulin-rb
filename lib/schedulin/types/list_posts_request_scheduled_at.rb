# frozen_string_literal: true

module Schedulin
  module Types
    class ListPostsRequestScheduledAt < Internal::Types::Model
      field :from, -> { String }, optional: true, nullable: false

      field :to, -> { String }, optional: true, nullable: false
    end
  end
end
