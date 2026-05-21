# frozen_string_literal: true

module Schedulin
  module Posts
    module Types
      module PostCreateAction
        extend Schedulin::Internal::Types::Enum

        SCHEDULE = "schedule"
        QUEUE = "queue"
        DRAFT = "draft"
      end
    end
  end
end
