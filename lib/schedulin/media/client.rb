# frozen_string_literal: true

module Schedulin
  module Media
    class Client
      # @param client [Schedulin::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Retrieve media information by its ID
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
      # @return [Schedulin::Types::Media, nil]
      def retrieve(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/media/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Update media information and metadata
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Media::Types::UpdateMediaRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @return [Schedulin::Types::Media]
      def update(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::Media::Types::UpdateMediaRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v0/media/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Schedulin::Types::Media.load(response.body)
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # List media for the organization with cursor pagination, search, type and tag filters
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Schedulin::Media::Types::ListMediaRequestCursor, nil] :cursor
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :q
      # @option params [Schedulin::Media::Types::ListMediaRequestType, nil] :type
      # @option params [String, nil] :tag_ids
      # @option params [Schedulin::Media::Types::ListMediaRequestTagMode, nil] :tag_mode
      #
      # @return [Object]
      def list(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["cursor"] = params[:cursor] if params.key?(:cursor)
        query_params["limit"] = params[:limit] if params.key?(:limit)
        query_params["q"] = params[:q] if params.key?(:q)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["tagIds"] = params[:tag_ids] if params.key?(:tag_ids)
        query_params["tagMode"] = params[:tag_mode] if params.key?(:tag_mode)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/media",
          query: query_params,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Replace the set of tags attached to a media item with the provided tag IDs
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Media::Types::SetTagsMediaRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :media_id
      #
      # @return [Object]
      def set_tags(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::Media::Types::SetTagsMediaRequest.new(params).to_h
        non_body_param_names = %w[mediaId]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PUT",
          path: "v0/media/#{URI.encode_uri_component(params[:media_id].to_s)}/tags",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Return media counts grouped by tag for the organization
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Schedulin::Media::Types::CountByTagMediaResponse]
      def count_by_tag(request_options: {}, **_params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "v0/media/tag-counts",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Schedulin::Media::Types::CountByTagMediaResponse.load(response.body)
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a presigned PUT URL. Upload by issuing an HTTP PUT of the raw file bytes to `url` with a `Content-Type`
      # header matching `contentType`, then reference the returned `key` when creating a post.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Media::Types::CreatePresignedPost]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @return [Schedulin::Types::PresignedPost]
      def create_presigned_post(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v0/media/presign",
          body: Schedulin::Media::Types::CreatePresignedPost.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Schedulin::Types::PresignedPost.load(response.body)
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
