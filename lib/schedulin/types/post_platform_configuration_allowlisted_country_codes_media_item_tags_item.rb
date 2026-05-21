# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationAllowlistedCountryCodesMediaItemTagsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { Schedulin::Types::PostPlatformConfigurationAllowlistedCountryCodesMediaItemTagsItemType }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::PostPlatformConfigurationAllowlistedCountryCodesMediaItemTagsItemPlatform }, optional: false, nullable: false

      field :x, -> { Integer }, optional: true, nullable: false

      field :y, -> { Integer }, optional: true, nullable: false
    end
  end
end
