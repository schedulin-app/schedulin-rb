# frozen_string_literal: true

module Schedulin
  module Types
    class PostWithRelationsPlatformConfigurationArticleArticle < Internal::Types::Model
      field :source, -> { String }, optional: false, nullable: false

      field :title, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :thumbnail_url, -> { String }, optional: true, nullable: false
    end
  end
end
