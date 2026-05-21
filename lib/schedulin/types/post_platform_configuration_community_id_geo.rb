# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationCommunityIDGeo < Internal::Types::Model
      field :place_id, -> { String }, optional: false, nullable: false
    end
  end
end
