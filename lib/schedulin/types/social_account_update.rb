# frozen_string_literal: true

module Schedulin
  module Types
    class SocialAccountUpdate < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :status, -> { Schedulin::Types::SocialAccountUpdateStatus }, optional: true, nullable: false
    end
  end
end
