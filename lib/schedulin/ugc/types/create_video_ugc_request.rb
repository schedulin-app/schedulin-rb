# frozen_string_literal: true

module Schedulin
  module Ugc
    module Types
      class CreateVideoUgcRequest < Internal::Types::Model
        field :title, -> { String }, optional: true, nullable: false

        field :product_name, -> { String }, optional: false, nullable: false, api_name: "productName"

        field :audience, -> { String }, optional: true, nullable: false

        field :hook_goal, -> { String }, optional: true, nullable: false, api_name: "hookGoal"

        field :hook, -> { String }, optional: true, nullable: false

        field :cta, -> { String }, optional: true, nullable: false

        field :language, -> { String }, optional: true, nullable: false

        field :website_url, -> { Schedulin::Ugc::Types::CreateVideoUgcRequestWebsiteURL }, optional: true, nullable: false, api_name: "websiteUrl"

        field :notes, -> { String }, optional: true, nullable: false

        field :actor_setting, -> { String }, optional: true, nullable: false, api_name: "actorSetting"

        field :voice_id, -> { Schedulin::Ugc::Types::CreateVideoUgcRequestVoiceID }, optional: true, nullable: false, api_name: "voiceId"

        field :resolution, -> { Schedulin::Ugc::Types::CreateVideoUgcRequestResolution }, optional: true, nullable: false

        field :length_seconds, -> { Integer }, optional: true, nullable: false, api_name: "lengthSeconds"

        field :story_intro, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "storyIntro"

        field :story_opening, -> { String }, optional: true, nullable: false, api_name: "storyOpening"

        field :show_product, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "showProduct"

        field :product_screenshot, -> { Schedulin::Ugc::Types::CreateVideoUgcRequestProductScreenshot }, optional: true, nullable: false, api_name: "productScreenshot"

        field :avatar_id, -> { String }, optional: true, nullable: false, api_name: "avatarId"
      end
    end
  end
end
