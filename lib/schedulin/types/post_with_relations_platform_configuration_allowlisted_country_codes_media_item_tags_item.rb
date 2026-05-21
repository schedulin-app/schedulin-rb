# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationAllowlistedCountryCodesMediaItemTagsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowlistedCountryCodesMediaItemTagsItemType }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::PostWithRelationsPlatformConfigurationAllowlistedCountryCodesMediaItemTagsItemPlatform }, optional: false, nullable: false

      field :x, -> { Integer }, optional: true, nullable: false

      field :y, -> { Integer }, optional: true, nullable: false
    end
  end
end
