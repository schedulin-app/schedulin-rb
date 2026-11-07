# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class AddToMediaLibraryUgcRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false, api_name: "projectId"
      end
    end
  end
end
