# frozen_string_literal: true

module Schedulin
  module Types
    class MediaSearch < Internal::Types::Model
      field :page, -> { Integer }, optional: true, nullable: false

      field :limit, -> { Integer }, optional: true, nullable: false

      field :q, -> { String }, optional: true, nullable: false

      field :type, -> { Schedulin::Types::MediaSearchType }, optional: true, nullable: false

      field :tag_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "tagIds"

      field :tag_mode, -> { Schedulin::Types::MediaSearchTagMode }, optional: true, nullable: false, api_name: "tagMode"
    end
  end
end
