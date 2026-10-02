# frozen_string_literal: true

module Schedulin
  module Posts
    class Client
      # @param client [Schedulin::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Search and filter posts with various criteria including status, date range, social accounts, and tags
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page
      # @option params [Schedulin::Posts::Types::ListPostsRequestStatus, nil] :status
      # @option params [Schedulin::Posts::Types::ListPostsRequestStatusesItem, nil] :statuses
      # @option params [Schedulin::Posts::Types::ListPostsRequestApprovalStatus, nil] :approval_status
      # @option params [Schedulin::Types::ListPostsRequestScheduledAt, nil] :scheduled_at
      # @option params [String, nil] :tag_ids
      # @option params [Schedulin::Posts::Types::ListPostsRequestTagMode, nil] :tag_mode
      # @option params [String, nil] :social_account_ids
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.posts.list
      #
      # @return [Schedulin::Posts::Types::ListPostsResponse]
      def list(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["statuses"] = params[:statuses] if params.key?(:statuses)
        query_params["approvalStatus"] = params[:approval_status] if params.key?(:approval_status)
        query_params["scheduledAt"] = params[:scheduled_at] if params.key?(:scheduled_at)
        query_params["tagIds"] = params[:tag_ids] if params.key?(:tag_ids)
        query_params["tagMode"] = params[:tag_mode] if params.key?(:tag_mode)
        query_params["socialAccountIds"] = params[:social_account_ids] if params.key?(:social_account_ids)
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/posts",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Posts::Types::ListPostsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Create a new post with media, tags, and scheduling options. Media items may reference a stored library URL or
      # any publicly reachable image/video URL — external URLs are downloaded into the media library automatically, so
      # clients that cannot issue a raw presigned PUT can attach media in one call.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Posts::Types::PostCreate]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.posts.create(
      #     caption: "caption",
      #     social_account_id: "socialAccountId"
      #   )
      #
      # @return [Schedulin::Posts::Types::CreatePostsResponse]
      def create(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v0/posts",
          body: Schedulin::Posts::Types::PostCreate.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Posts::Types::CreatePostsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns counts of posts for the Queue, Drafts, Approvals, and Sent tabs
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :social_account_ids
      #
      # @example
      #   client.posts.count_by_tab
      #
      # @return [Schedulin::Posts::Types::CountByTabPostsResponse]
      def count_by_tab(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["socialAccountIds"] = params[:social_account_ids] if params.key?(:social_account_ids)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/posts/counts/by-tab",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Posts::Types::CountByTabPostsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve a single post by its ID with all relations
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.posts.retrieve(id: "id")
      #
      # @return [Schedulin::Types::PostWithRelations]
      def retrieve(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/posts/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Types::PostWithRelations.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Update an existing draft or scheduled post by its ID. `status` may be DRAFT, SCHEDULED (requires a future
      # `scheduledAt`, either in this request or already on the post), or PROCESSING (publish now). COMPLETED and FAILED
      # are set only by the publisher. A new `scheduledAt` must not be in the past, whatever the status (422). `media`
      # replaces the post's media and accepts the same items as create — a stored or public URL (`{ url }`) or a media
      # library id (`{ id }`), so the `media` array from `GET /v0/posts/{id}` can be sent back as-is. `parts` (X and
      # Mastodon only) replaces the post's thread with the same items create accepts — part media may also be a library
      # `{ id }`, so the `parts` array from `GET /v0/posts/{id}` round-trips — and an empty array removes the thread. On
      # X, parts[0] is the opening tweet: sending `parts` without `caption` sets the caption to parts[0], and changing
      # `caption` without `parts` updates parts[0] when it matched the old caption. Posts that are already publishing,
      # published, or failed can't be edited (409).
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Posts::Types::UpdatePostsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.posts.update(id: "id")
      #
      # @return [Schedulin::Types::Post]
      def update(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::Posts::Types::UpdatePostsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v0/posts/#{URI.encode_uri_component(params[:id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Types::Post.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a post by its ID
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Posts::Types::DeletePostsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.posts.delete(id: "id")
      #
      # @return [Schedulin::Types::Post]
      def delete(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::Posts::Types::DeletePostsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "v0/posts/#{URI.encode_uri_component(params[:id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Types::Post.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve the latest analytics snapshot for a post
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.posts.analytics_summary(id: "id")
      #
      # @return [Schedulin::Posts::Types::AnalyticsSummaryPostsResponse]
      def analytics_summary(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/posts/#{URI.encode_uri_component(params[:id].to_s)}/analytics/summary",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Posts::Types::AnalyticsSummaryPostsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve time series analytics metrics for a post
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      # @option params [Integer, nil] :limit
      #
      # @example
      #   client.posts.analytics_series(id: "id")
      #
      # @return [Schedulin::Posts::Types::AnalyticsSeriesPostsResponse]
      def analytics_series(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["limit"] = params[:limit] if params.key?(:limit)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/posts/#{URI.encode_uri_component(params[:id].to_s)}/analytics/series",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Posts::Types::AnalyticsSeriesPostsResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Publish a draft post to connected social media accounts
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Posts::Types::PublishDraftPostsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.posts.publish_draft(id: "id")
      #
      # @return [Schedulin::Types::Post]
      def publish_draft(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::Posts::Types::PublishDraftPostsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v0/posts/#{URI.encode_uri_component(params[:id].to_s)}/publish",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Types::Post.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Replace all tags on a post. No status restrictions apply.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Posts::Types::UpdateTagsPostsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.posts.update_tags(
      #     id: "id",
      #     tag_ids: ["tagIds"]
      #   )
      #
      # @return [Schedulin::Types::Post]
      def update_tags(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::Posts::Types::UpdateTagsPostsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v0/posts/#{URI.encode_uri_component(params[:id].to_s)}/tags",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Types::Post.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
