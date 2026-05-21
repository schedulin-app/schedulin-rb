# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationArticleTargetEntitiesItem < Internal::Types::Model
      field :locales, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :industries, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :seniorities, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :functions, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :staff_count_ranges, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "staffCountRanges"

      field :followed_companies, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "followedCompanies"
    end
  end
end
