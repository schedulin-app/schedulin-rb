# frozen_string_literal: true

module Schedulin
  module PostGroups
    class Client
      # @param client [Schedulin::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Create posts for several social accounts in one request — for example the same caption and image sent to
      # Instagram, Threads and Facebook. Each post is validated exactly like `POST /v0/posts` (including per-platform
      # rules), and media may reference stored library URLs or publicly reachable URLs; an external URL shared by
      # several posts is imported once. The request is atomic: if any post is invalid, nothing is created. Posts with
      # `action: "queue"` on the same account take consecutive queue slots. Up to 50 posts per request.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::PostGroups::Types::CreatePostGroupsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.post_groups.create(posts: [{
      #     caption: "caption",
      #     social_account_id: "socialAccountId"
      #   }])
      #
      # @return [Schedulin::PostGroups::Types::CreatePostGroupsResponse]
      def create(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v0/post-groups",
          body: Schedulin::PostGroups::Types::CreatePostGroupsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::PostGroups::Types::CreatePostGroupsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
