# frozen_string_literal: true

module Schedulin
  module Types
    class PostPlatformConfigurationBrandedContentSponsorIDsMediaItemTagsItem < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :type, -> { Schedulin::Types::PostPlatformConfigurationBrandedContentSponsorIDsMediaItemTagsItemType }, optional: false, nullable: false

      field :platform, -> { Schedulin::Types::PostPlatformConfigurationBrandedContentSponsorIDsMediaItemTagsItemPlatform }, optional: false, nullable: false

      field :x, -> { Integer }, optional: true, nullable: false

      field :y, -> { Integer }, optional: true, nullable: false
    end
  end
end
