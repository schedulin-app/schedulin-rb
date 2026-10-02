# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      class CountByTabPostsResponse < Internal::Types::Model
        field :queue, -> { Integer }, optional: false, nullable: false

        field :drafts, -> { Integer }, optional: false, nullable: false

        field :approvals, -> { Integer }, optional: false, nullable: false

        field :sent, -> { Integer }, optional: false, nullable: false

        field :failed, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
