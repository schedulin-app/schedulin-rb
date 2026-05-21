# frozen_string_literal: true

module Schedulin
  module Tags
    module Types
      class DeleteTagsRequest < Internal::Types::Model
        field :id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
