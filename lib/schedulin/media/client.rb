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

      # Downloads a publicly reachable image or video into the media library and returns the media record. Use the
      # returned `url` in `media[].url` when creating a post. Prefer this over the presign flow whenever your client
      # cannot issue a raw HTTP PUT (e.g. an AI agent). The source URL must be public (no auth), http(s), and at most
      # the post upload limit (250 MB); SVG and other active content is rejected.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Media::Types::CreateFromURLMediaRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.media.create_from_url(url: "url")
      #
      # @return [Object]
      def create_from_url(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v0/media/from-url",
          body: Schedulin::Media::Types::CreateFromURLMediaRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Returns a short-lived URL to a page where the user uploads files from their device (or a pasted attachment)
      # straight into the media library. Hand the URL to the user; once they've uploaded, call GET /v0/media (list
      # media, newest first) and reference the returned `url` when creating a post. Use this whenever the file isn't
      # already at a public URL.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Media::Types::CreateUploadLinkMediaRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.media.create_upload_link
      #
      # @return [Object]
      def create_upload_link(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v0/media/upload-link",
          body: Schedulin::Media::Types::CreateUploadLinkMediaRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Schedulin::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Upload raw image, video, or audio bytes directly as multipart/form-data. The file is stored in your media
      # library and the record is returned; use its `url` in `media[].url` when creating a post. Max 250 MB; SVG and
      # other active content is rejected. For a file already hosted at a public URL, prefer POST /v0/media/from-url.
      #
      # @param request_options [Hash]
      # @param params [void]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.media.upload
      #
      # @return [Object]
      def upload(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        body = Internal::Multipart::FormData.new

        if params[:file]
          body.add_file(
            name: "file",
            file: params[:file]
          )
        end
        unless params[:name].nil?
          body.add(
            name: "name",
            value: params[:name]
          )
        end
        unless params[:alt].nil?
          body.add(
            name: "alt",
            value: params[:alt]
          )
        end
        unless params[:content_type].nil?
          body.add(
            name: "contentType",
            value: params[:content_type]
          )
        end

        request = Schedulin::Internal::Multipart::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "v0/media/upload",
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
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
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
      # @example
      #   client.media.retrieve(id: "id")
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
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Types::Media.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
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
      # @example
      #   client.media.update(
      #     id: "id",
      #     url: "url"
      #   )
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
          (response.body.to_s.empty? ? nil : Schedulin::Types::Media.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a media object and remove its files from storage. Fails with a conflict when the media is attached to any
      # post — remove it from those posts (or delete them) first.
      #
      # @param request_options [Hash]
      # @param params [Schedulin::Media::Types::DeleteMediaRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.media.delete(id: "id")
      #
      # @return [Object]
      def delete(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        request_data = Schedulin::Media::Types::DeleteMediaRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Schedulin::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
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
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # List media for the organization with page pagination, search, type and tag filters
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :page
      # @option params [Integer, nil] :limit
      # @option params [String, nil] :q
      # @option params [Schedulin::Media::Types::ListMediaRequestType, nil] :type
      # @option params [String, nil] :tag_ids
      # @option params [Schedulin::Media::Types::ListMediaRequestTagMode, nil] :tag_mode
      #
      # @example
      #   client.media.list
      #
      # @return [Schedulin::Media::Types::ListMediaResponse]
      def list(request_options: {}, **params)
        params = Schedulin::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["page"] = params[:page] if params.key?(:page)
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
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Schedulin::Media::Types::ListMediaResponse.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
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
      # @example
      #   client.media.set_tags(
      #     media_id: "mediaId",
      #     tag_ids: ["tagIds"]
      #   )
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
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
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
      # @example
      #   client.media.count_by_tag
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
          (response.body.to_s.empty? ? nil : Schedulin::Media::Types::CountByTagMediaResponse.load(response.body))
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
      # @example
      #   client.media.create_presigned_post(
      #     content_type: "contentType",
      #     key: "key"
      #   )
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
          (response.body.to_s.empty? ? nil : Schedulin::Types::PresignedPost.load(response.body))
        else
          error_class = Schedulin::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
